import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_demo/bean/base_response_entity.dart';
import 'package:flutter_demo/utils/log.dart';
import 'package:flutter_demo/utils/log_utils.dart';
import 'package:flutter_demo/utils/toast_util.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart' as Route;


import '../res/constant.dart';
import '../utils/log_utils.dart';

import 'base_entity.dart';
import 'error_handle.dart';

/// 默认dio配置
Duration _connectTimeout = const Duration(milliseconds: 15000);
Duration _receiveTimeout = const Duration(milliseconds: 15000);
Duration _sendTimeout = const Duration(milliseconds: 10000);
String _baseUrl = '';
List<Interceptor> _interceptors = [];

/// 初始化Dio配置
void configDio({

  Duration? connectTimeout,
  Duration? receiveTimeout,
  Duration? sendTimeout,
  String? baseUrl,
  List<Interceptor>? interceptors,
}) {
  _connectTimeout = connectTimeout ?? _connectTimeout;
  _receiveTimeout = receiveTimeout ?? _receiveTimeout;
  _sendTimeout = sendTimeout ?? _sendTimeout;
  _baseUrl = baseUrl ?? _baseUrl;
  _interceptors = interceptors ?? _interceptors;
}

typedef NetSuccessCallback<T> = Function(T data);
typedef NetSuccessListCallback<T> = Function(List<T> data);
typedef NetErrorCallback = Function(int code, String msg);

class DioUtils {

  factory DioUtils() => _singleton;

  DioUtils._() {
    final BaseOptions _options = BaseOptions(
      connectTimeout: _connectTimeout,
      receiveTimeout: _receiveTimeout,
      sendTimeout: _sendTimeout,
      /// dio默认json解析，这里指定返回UTF8字符串，自己处理解析。（可也以自定义Transformer实现）
      responseType: ResponseType.plain,
      validateStatus: (_) {
        // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
        return true;
      },
      baseUrl: _baseUrl,
      contentType: Headers.jsonContentType, // 适用于post form表单提交
    );
    LogUtil.d('configDio base url $_baseUrl');
    _dio = Dio(_options);
    /// Fiddler抓包代理配置 https://www.jianshu.com/p/d831b1f7c45b
//    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//        (HttpClient client) {
//      client.findProxy = (uri) {
//        //proxy all request to localhost:8888
//        return 'PROXY 10.41.0.132:8888';
//      };
//      client.badCertificateCallback =
//          (X509Certificate cert, String host, int port) => true;
//    };

    /// 添加拦截器
    void addInterceptor(Interceptor interceptor) {
      _dio.interceptors.add(interceptor);
    }
    _interceptors.forEach(addInterceptor);
  }

  static final DioUtils _singleton = DioUtils._();

  static DioUtils get instance => DioUtils();

  static late Dio _dio;

  Dio get dio => _dio;

  // 数据返回格式统一，统一处理异常
  Future<BaseEntity<T>> _request<T>(String method, String url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    final Response<String> response = await _dio.request<String>(
      url,
      data: data,
      queryParameters: queryParameters,
      options: _checkOptions(method, options),
      cancelToken: cancelToken,
    );
    try {
      final String data = response.data.toString();
      /// 集成测试无法使用 isolate https://github.com/flutter/flutter/issues/24703
      /// 使用compute条件：数据大于10KB（粗略使用10 * 1024）且当前不是集成测试（后面可能会根据Web环境进行调整）
      /// 主要目的减少不必要的性能开销
      final bool isCompute = !Constant.isDriverTest && data.length > 10 * 1024;
      debugPrint('isCompute:$isCompute');
      final Map<String, dynamic> _map = isCompute ? await compute(parseData, data) : parseData(data);
      return BaseEntity<T>.fromJson(_map);

    } catch(e) {
      debugPrint("isError$e");
      String data = response.data.toString();
      final Map<String, dynamic> _map = parseData(data);
      BaseResponseEntity baseEntity = BaseResponseEntity.fromJson(_map);
      return BaseEntity<T>(baseEntity.code, baseEntity.message??'', null);
      //处理异常
    }
  }

  Options _checkOptions(String method, Options? options) {
    options ??= Options();
    options.method = method;
    return options;
  }

  Future requestNetwork<T>(Method method, String url, bool isLoading,{
    NetSuccessCallback<T?>? onSuccess,
    NetErrorCallback? onError,
    Object? params,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
  }) {
    if(isLoading){
      EasyLoading.show(status: "正在加载");
    }
    return _request<T>(method.value, url,
      data: params,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    ).then<void>((BaseEntity<T> result) {
      EasyLoading.dismiss();
      if (result.code == 200) {
        onSuccess?.call(result.data);
      } else {
        LogUtil.d('151 ${result.code}');
        _onError(result.code, result.message, onError);
      }
    }, onError: (dynamic e) {
      EasyLoading.dismiss();
      _cancelLogPrint(e, url);
      final NetError error = ExceptionHandle.handleException(e);
      LogUtil.d(' 158 ----- code=${error.code}  msg=${error.msg}');

      _onError(error.code, error.msg, onError);
    });
  }

  // /// 统一处理(onSuccess返回T对象，onSuccessList返回 List<T>)
  // void asyncRequestNetwork<T>(Method method, String url, bool isLoading,{
  //   NetSuccessCallback<T?>? onSuccess,
  //   NetErrorCallback? onError,
  //   Object? params,
  //   Map<String, dynamic>? queryParameters,
  //   CancelToken? cancelToken,
  //   Options? options,
  // }) {
  //   if(isLoading){
  //     EasyLoading.show(status: "正在加载");
  //   }
  //   Stream.fromFuture(_request<T>(method.value, url,
  //     data: params,
  //     queryParameters: queryParameters,
  //     options: options,
  //     cancelToken: cancelToken,
  //   )).asBroadcastStream()
  //       .listen((result) {
  //     EasyLoading.dismiss();
  //     if (result.code == 200) {
  //       if (onSuccess != null) {
  //         onSuccess(result.data);
  //       }
  //     } else {
  //       _onError(result.code, result.message, onError);
  //     }
  //   }, onError: (dynamic e) {
  //     EasyLoading.dismiss();
  //     _cancelLogPrint(e, url);
  //     final NetError error = ExceptionHandle.handleException(e);
  //     _onError(error.code, error.msg, onError);
  //   });
  // }

  void _cancelLogPrint(dynamic e, String url) {
    if (e is DioError && CancelToken.isCancel(e)) {
      Log.e('取消请求接口： $url');
    }
  }

  void _onError(int? code, String msg, NetErrorCallback? onError) {
    if (code == null) {
      code = ExceptionHandle.unknown_error;
      msg = '未知异常';
    }
    Log.e('接口请求异常： code: $code, msg: $msg  }');
    if(code == 401){
      ToastUtil.show('登录信息过期，请重新登录');
      //Route.Get.offAll(()=>const LoginPage());
      return;
    } /*else if (code == 9999){
      ToastUtil.show('服务器配置错误');
    }*/

    if(code != 1007 || code != 401){
      //ToastUtil.show(msg);
      LogUtil.d(' 219 ----- code=$code  msg=$msg');
    }
    onError?.call(code, msg);
  }
}

Map<String, dynamic> parseData(String data) {
  return json.decode(data) as Map<String, dynamic>;
}

enum Method {
  get,
  post,
  put,
  patch,
  delete,
  head
}

/// 使用拓展枚举替代 switch判断取值
/// https://zhuanlan.zhihu.com/p/98545689
extension MethodExtension on Method {
  String get value => ['GET', 'POST', 'PUT', 'PATCH', 'DELETE', 'HEAD'][index];
}