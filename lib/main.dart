import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_demo/pages/tab_bar/tab_bar.dart';
import 'package:flutter_demo/res/color/theme_config.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  // MyApp({Key? key}) : super(key: key){
  //   Log.init();
  //   initDio();
  //   initEasyLoading();
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 检测系统主题模式：light/dark
    ThemeConfig.changeThemeMode();

    initEasyLoading();
    //initTBS();
  }

  ///初始化loading样式
  void initEasyLoading() {
    EasyLoading.instance.userInteractions = false;
  }


  ///动态申请权限 存储权限
  Future<bool> requestFilePermission() async {
    //获取当前的权限
    //var status = await Permission.requestInstallPackages.status;
    var storage = await Permission.storage.status;

    if (storage == PermissionStatus.granted ) {
      //已经授权
      return true;
    } else {
      //未授权则发起一次申请
      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();
      var storage = statuses[Permission.storage];

      if (storage == PermissionStatus.granted) {
        return true;
      } else {
        return false;
      }
    }
  }




  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375,667),
      builder: (_,child)=> RefreshConfiguration(
        headerBuilder:()=>const ClassicHeader(
          idleText: "下拉刷新",
          releaseText: "松开刷新",
          completeText: "刷新完成",
          failedText: '刷新失败',
          refreshingText: "正在刷新",
          refreshStyle: RefreshStyle.Follow,
          refreshingIcon: CupertinoActivityIndicator(),
        ),        // 配置默认头部指示器,假如你每个页面的头部指示器都一样的话,你需要设置这个
        footerBuilder:  () => const ClassicFooter(
          idleText: '上拉加载',
          loadingText:'正在加载',
          failedText: '加载失败',
          noDataText:'加载完毕',
        ),        // 配置默认底部指示器
        headerTriggerDistance: 80.0,        // 头部触发刷新的越界距离
        springDescription:const SpringDescription(stiffness: 170, damping: 16, mass: 1.9),         // 自定义回弹动画,三个属性值意义请查询flutter api
        maxOverScrollExtent :100, //头部最大可以拖动的范围,如果发生冲出视图范围区域,请设置这个属性
        maxUnderScrollExtent:0, // 底部最大可以拖动的范围
        enableScrollWhenRefreshCompleted: true, //这个属性不兼容PageView和TabBarView,如果你特别需要TabBarView左右滑动,你需要把它设置为true
        enableLoadingWhenFailed : true, //在加载失败的状态下,用户仍然可以通过手势上拉来触发加载更多
        hideFooterWhenNotFull: true, // Viewport不满一屏时,禁用上拉加载更多功能
        enableBallisticLoad: true, // 可以通过惯性滑动触发加载更多
        child: GetMaterialApp(
          builder: EasyLoading.init(
            builder: (context,widget){
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              );
            },
          ),
          theme:ThemeConfig.lightTheme,
          darkTheme: ThemeConfig.darkTheme,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
          //scrollBehavior: MyScrollBehavior(),//取消水波纹
          navigatorKey: navigatorKey,
          locale: const Locale('zh', 'CN'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('zh', 'CH'),
            Locale('en', 'US'),
          ],
          home: PersistentBottomPage(menuScreenContext: context,),
        ),
      ),
    );
  }



}