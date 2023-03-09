
//对外调用
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app_color_config.dart';

class AppColor {
  /// 主色
  static get appMain {
    return AppColorConfig.getColor(AppColorConfig.appMain);
  }

  /// app bar 渐变色开始
  static get appBarStart {
    return AppColorConfig.getColor(AppColorConfig.appBarStart);
  }

  /// app bar 渐变色
  static get appBarEnd {
    return AppColorConfig.getColor(AppColorConfig.appBarEnd);
  }

  /// appBar
  static get appBar {
    return AppColorConfig.getColor(AppColorConfig.appBar);
  }

  /// bgColor
  static get bgColor {
    return AppColorConfig.getColor(AppColorConfig.bgColor);
  }
  static get bgGrayColor {
    return AppColorConfig.getColor(AppColorConfig.bgGrayColor);
  }
  static get homeBgColor {
    return AppColorConfig.getColor(AppColorConfig.homeBgColor);
  }


  static get listBgColor {
    return AppColorConfig.getColor(AppColorConfig.listBgColor);
  }
  static get listItemBgColor {
    return AppColorConfig.getColor(AppColorConfig.listItemBgColor);
  }

  /// textColor
  static get textColor {
    return AppColorConfig.getColor(AppColorConfig.textColor);
  }
  static get hintTextColor {
    return AppColorConfig.getColor(AppColorConfig.hintTextColor);
  }

  /// buttonTitle 按钮标题
  static get loginTitle {
    return AppColorConfig.getColor(AppColorConfig.loginTitle);
  }
  static get loginInputText{
    return AppColorConfig.getColor(AppColorConfig.loginInputText);
  }
  static get loginHintText{
    return AppColorConfig.getColor(AppColorConfig.loginHintText);
  }
  /// homeTitleColor 首页
  static get homeTitleColor {
    return AppColorConfig.getColor(AppColorConfig.homeTitleColor);
  }
  //microTitleColor 微课堂
  static get microTitleColor {
    return AppColorConfig.getColor(AppColorConfig.microTitleColor);
  }
  //培训计划
  static get trainingItemBg{
    return AppColorConfig.getColor(AppColorConfig.trainingItemBg);
  }
  static get trainingItemText{
    return AppColorConfig.getColor(AppColorConfig.trainingItemText);
  }
  static get trainingItemTextEnd{
    return AppColorConfig.getColor(AppColorConfig.trainingItemTextEnd);
  }
  static get trainingTitleColor{
    return AppColorConfig.getColor(AppColorConfig.trainingTitleColor);
  }
  static get trainingBtnTextColor{
    return AppColorConfig.getColor(AppColorConfig.trainingBtnTextColor);
  }


  //消息
  static get messageTitleColor{
    return AppColorConfig.getColor(AppColorConfig.msgTitleColor);
  }
  static get msgBGColor{
    return AppColorConfig.getColor(AppColorConfig.msgBGColor);
  }
  static get msgItemBGColor{
    return AppColorConfig.getColor(AppColorConfig.msgItemBGColor);
  }
  //消息-详情
  static get msgDetailText{
    return AppColorConfig.getColor(AppColorConfig.msgDetailText);
  }
  //我的
  static get mineTitleColor{
    return AppColorConfig.getColor(AppColorConfig.mineTitleColor);
  }
  //我的-工作信息
  static get workInfoLeftColor {
    return AppColorConfig.getColor(AppColorConfig.workInfoLeftColor);
  }
  //我的-意见反馈
  static get feedbackHintColor{
    return AppColorConfig.getColor(AppColorConfig.feedbackHintColor);
  }
  //理论考核
  static get theoryTitleColor{
    return AppColorConfig.getColor(AppColorConfig.mineTitleColor);
  }
  static get operationTitleColor{
    return AppColorConfig.getColor(AppColorConfig.operationTitleColor);
  }
  static get operationBtnColor{
    return AppColorConfig.getColor(AppColorConfig.operationBtnColor);
  }


  // item 已结束
  static get itemFinishColor{
    return AppColorConfig.getColor(AppColorConfig.itemFinishColor);
  }
  //item 未开始 已开始
  static get itemStartColor{
    return AppColorConfig.getColor(AppColorConfig.itemStartColor);
  }

  //题库
  static get questionTitleColor{
    return AppColorConfig.getColor(AppColorConfig.questionTitleColor);
  }
  static get questionTextColor{
    return AppColorConfig.getColor(AppColorConfig.questionTextColor);
  }

  //答题界面 底部答题卡
  static get questionBottomColor{
    return AppColorConfig.getColor(AppColorConfig.questionBottomColor);
  }

  static get searchTextColor{
    return AppColorConfig.getColor(AppColorConfig.searchTextColor);
  }

  //一类学分/二类学分
  static get classScoreBg{
    return AppColorConfig.getColor(AppColorConfig.classScoreBg);
  }
  static get classScoreTextColor{
    return AppColorConfig.getColor(AppColorConfig.classScoreTextColor);
  }
  static get classScoreItemBg{
    return AppColorConfig.getColor(AppColorConfig.classScoreItemBg);
  }


  ///常用颜色值
  /// 透明
  static const Color colorTransparent = Colors.transparent;

  /// 主视图背景色
  static Color colorBackground =
  Get.isDarkMode ? Color(0xFFFFFFFF) : Color(0xFF2268F2);

  ///导航栏背景颜色
  static const Color color_nav_bar_bg = Color(0xFFFFFFFF);

  ///主要 分割线
  static const Color color_divider = Color(0xFFEDEDED);

  /// 进度颜色
  static const Color color_progress = Color(0xFFE6E7E9);

  /// 文本颜色
  static const Color color_text_33 = Color(0xFF333333);

  /// 文本颜色
  static const Color color_text_66 = Color(0xFFE6E7E9);

  /// 文本颜色
  static const Color color_text_99 = Color(0xFF999999);

  /// 文本颜色
  static const Color color_text_hint = Color(0xFFE6E7E9);

  /// 红色
  static const Color red_color = Color(0xFFFF3622);

  ///蓝色
  static const Color blue_color = Color(0xFF2268F2);

  ///白色
  static const Color white_color = Color(0xFFFFFFFF);

  /// 黑色
  static const Color black_color = Color(0xFF000000);

  ///绿色
  static const Color green_color = Color(0xFF06C88C);

  ///黄色
  static const Color yellow_color = Color(0xFFF5A623);
}
