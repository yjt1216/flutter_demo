
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



//底部固定模块
double videoFixHeight = ScreenUtil().setHeight(50);
//底部Drawer 画布 答题卡
double practiceBottomDrawerHeight = ScreenUtil().setHeight(350);

//是否为开发环境：true：开发环境 false:正式环境
//外网地址 演示环境 http://101.133.140.217:18080
//内网地址 开发环境 http://192.168.1.18:18080
//南京地址 生产环境 http://36.152.50.211:8088
const bool isDev = true;
const devDomain = "http://192.168.1.18:18080"; //开发环境-内网测试 true
const proDomain = "http://36.152.50.211:8088"; //生产环境-医院运营 false
const testDomain = "http://101.133.140.217:18080"; //演示环境 true
const baseApiUrl = isDev ? devDomain : proDomain;

class Constant {

  static BuildContext? appContext;

  /// App运行在Release环境时，inProduction为true；当App运行在Debug和Profile环境时，inProduction为false
  static const bool inProduction  = kReleaseMode;

  static bool isDriverTest  = false;
  static bool isUnitTest  = false;

  static const String baseUrl = 'base url';


  static const String data = 'data';
  static const String message = 'message';
  static const String code = 'code';

  static const String keyGuide = 'keyGuide';
  static const String phone = 'phone';
  static const String accessToken = 'accessToken';
  static const String refreshToken = 'refreshToken';

  static const String account = "account";
  static const String password = "password";
  //用户ID
  static const String personId = "personId";
  static const String deptId = "deptId";
  static const String wardId = "wardId";
  static const String userName = 'userName';
  //所有年度学分
  static const String creditScore = 'creditScore';
  //一类学分
  static const String firstScore = 'first score';

  //用户头像
  static const String userImg = "user head img";

  //医院图标
  static const String hospitalIcon = 'hospital Icon';
  //是否保存密码
  static const String recordPassword = 'record Password';

  //当前最新版本存储
  static const String appVersionInfo = 'android app version info';

}
