import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// 颜色类适配黑暗模式 三步骤 1 2 3 ，一般来说一个app的样式,不会太多，所以这边处理就可以达到全局设置。
/// 适配黑暗模式步骤 添加之前可先查看是否已经添加该样式
/// 1 FXColorConfig类中添加颜色key， 例 static const String main_bg_key = 'main_bg';
/// 2 FXColorConfig类中的_colors集合中添加颜色key-value
///   例：main_bg_key: [FXColor.whiteColor, FXColor.colorText33],
///   key:main_bg_key是步骤1添加的key, value:数组 两个颜色值，0是正常模式颜色，1是黑暗模式颜色
/// 3 FXColor类添加get方法 对外访问
///   例 static get mainBg {
///        return FXColorConfig.getColor(FXColorConfig.main_bg_key);
///       }


///主题色配置 统一配置
class ThemeConfig {
  /// 正常模式主题设置
  static ThemeData lightTheme = ThemeData(brightness: Brightness.light);

  /// 黑暗模式主题设置
  static ThemeData darkTheme = ThemeData(brightness: Brightness.dark);

  ///设置黑暗模式
  static void changeThemeMode({ThemeMode themeMode = ThemeMode.system}) {
    /// 主题类型
    Get.changeThemeMode(themeMode);

    /// 注意样式设置
//    switch (themeMode) {
//      case ThemeMode.system:
//        if (Get.isDarkMode == true) {
//          Get.changeTheme(darkTheme);
//        } else {
//          Get.changeTheme(lightTheme);
//        }
//        break;
//      case ThemeMode.dark:
//        Get.changeTheme(darkTheme);
//        break;
//      case ThemeMode.light:
//        Get.changeTheme(lightTheme);
//        break;
//    }
  }
}