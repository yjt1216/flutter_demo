
import 'dart:ui';

import 'package:get/get.dart';

import 'app_color.dart';

/// 颜色配置
class AppColorConfig {
  /// 颜色key
  static const String appMain = 'app main';
  static const String appBarStart = 'app bar start'; // app bar 渐变色
  static const String appBarEnd = 'app bar end'; // app bar 渐变色
  static const String appBar = 'app bar';

  static const String bgColor = 'bg color'; //背景色
  static const String bgGrayColor = 'bgGrayColor';
  static const String homeBgColor = 'home page Bg Color';
  static const String textColor = 'text color';
  static const String hintTextColor = 'hint Text Color';

  //登录
  static const String loginTitle = 'login title';
  static const String loginInputText = 'login Input Text';
  static const String loginHintText = 'login Hint Text';

  //首页 微课堂 题库练习 等字体颜色
  static const String homeTitleColor = 'home Title Color';

  //微课堂 item字体颜色
  static const String microTitleColor = 'micro Title Color';

  //培训计划
  static const String trainingItemBg = 'training Item BG Color';
  static const String trainingItemText = 'training Item Text Color';
  static const String trainingItemTextEnd = 'training Item Text End Color';//结束状态字体
  static const String trainingTitleColor = 'training Title Color';
  static const String trainingBtnTextColor = 'training Btn text Color';



  //动态消息
  static const String msgTitleColor = 'message Title Color';
  static const String msgBGColor = 'message Background Color';
  static const String msgItemBGColor = 'message item Background Color';
  static const String msgDetailText = 'msg Detail Text Color';

  ///我的
  static const String mineTitleColor = 'mine Title Color';
  static const String workInfoLeftColor = 'work Info Left text Color';
  //意见反馈
  static const String feedbackHintColor = 'feedback Hint Text Color';

  //理论考核
  static const String theoryTitleColor = 'theory exam Title Color';
  static const String theoryBtnColor = 'theory Btn text Color';

  //操作考核
  static const String operationTitleColor = 'operation exam Title Color';
  static const String operationBtnColor = 'operation Btn text Color';

  //item 结束
  static const String itemFinishColor = 'training item Finish Text Color';
  //item 已开始 未开始
  static const String itemStartColor = 'training item start Text Color';

  //题库 black gray
  static const String questionTitleColor = 'question title Color';
  static const String questionTextColor = 'question Text Color';

  //题库底部 答题卡
  static const String questionBottomColor = 'question bottom Color';

  //搜索内容
  static const String searchTextColor = 'search Text Color';

  //列表 背景色
  static const String listBgColor = 'list view background Color';

  //列表item 背景色
  static const String listItemBgColor = 'list item background Color';

  //年度学分管理 一类/二类学分
  static const String classScoreBg = 'score one two bg color';
  static const String classScoreItemBg = 'score one two Item color'; //item 背景色
  static const String classScoreTextColor = 'class Score Text Color';


  /// 颜色值
  /// 日光/夜间模式
  static const _colors = {
    appMain: [Color(0xFF14BFD6), Color(0xFF14BFD6)],
    appBarStart: [Color(0xff3ED7CB), Color(0xff3ED7CB)],
    appBarEnd: [Color(0xff13BED5), Color(0xff13BED5)],
    appBar: [Color(0xFFFFFFFF), Color(0xFF000000)],

    bgColor: [Color(0xFFF8F8F8), Color(0xFF18191A)],
    bgGrayColor:[Color(0x8AFFFFFF), Color(0x61000000)],
    homeBgColor:[Color(0xFFFFFFFF), Color(0xFF18191A)],


    listBgColor:[Color.fromRGBO(239, 247, 248, 1), Color(0x61000000)],
    listItemBgColor:[Color(0xFFFFFFFF), Color(0x61000000)],


    textColor: [Color(0xFFB8B8B8), Color(0xFF000000)],
    hintTextColor: [Color(0xFF333333), Color(0xFFB8B8B8)],

    //登录相关
    loginTitle: [Color(0xFF42929E), Color(0xFF42929E)],
    loginInputText:[Color(0xFF18191A),Color(0xFF18191A)], //账号密码输入字体颜色
    loginHintText:[Color(0xFFB8B8B8),Color(0xFF18191A)],  //账号密码 占位字体颜色


    //培训计划
    trainingItemBg:[Color(0xFFFFFFFF),Color.fromRGBO(51, 51, 51, 1)],
    trainingItemText:[Color(0xFF000000),Color.fromRGBO(251, 251, 251, 1)], //进行中 未开始
    trainingItemTextEnd:[Color(0x73000000),Color.fromRGBO(225, 225, 225, 1)],
    trainingTitleColor: [Color(0xFF18191A),Color(0xFFf1f1f1)],
    trainingBtnTextColor:[Color(0xFFFFFFFF),Color(0xFFFFFFFF)],

    //操作考核
    operationTitleColor:[Color(0xFF18191A),Color(0xFFf1f1f1)],
    operationBtnColor:[Color(0xFFFFFFFF),Color(0xFFFFFFFF)],

    //微课堂

    homeTitleColor: [Color(0xFF18191A),Color(0xFFf1f1f1)],
    microTitleColor: [Color(0xFF18191A),Color(0xFFf1f1f1)],


    //消息
    msgTitleColor: [Color(0xFF18191A),Color(0xFF18191A)],
    msgBGColor:[Color.fromRGBO(239, 247, 248, 1),Color.fromRGBO(239, 247, 248, 1)],
    msgItemBGColor:[Color.fromRGBO(255, 255, 255, 1),Color.fromRGBO(239, 247, 248, 1)],
    msgDetailText:[Color(0xFF18191A),Color.fromRGBO(239, 247, 248, 1)],

    //我的
    mineTitleColor: [Color(0xFF18191A),Color(0xFFf1f1f1)],
    workInfoLeftColor:[Color(0xFF757575),Color(0xFFf1f1f1)],
    feedbackHintColor:[Color(0xFF757575),Color(0xFF757575)],
    theoryTitleColor: [Color(0xFF18191A),Color(0xFFf1f1f1)],

    itemFinishColor: [Color(0xFF757575),Color(0xFFf1f1f1)],
    itemStartColor: [Color(0xFF000000),Color(0xFFFFFFFF)],

    questionTitleColor: [Color(0xFF000000),Color(0xFFFFFFFF)],
    questionTextColor: [Color(0x73000000),Color(0xB3FFFFFF)],

    questionBottomColor: [Color(0XFFF2F5FA),Color(0x61000000)],

    searchTextColor:[Color(0xFF333333), Color(0xFF000000)],

    //学分管理
    classScoreBg:[Color.fromRGBO(239, 247, 248, 1),Color(0xFF000000)],
    classScoreItemBg:[Color.fromRGBO(255, 255, 255, 1),Color(0xFF757575)],
    classScoreTextColor:[Color(0xFF000000),Color.fromRGBO(239, 247, 248, 1)],

  };

  /// 取颜色值
  static Color getColor(String key) {
    final colors = _colors[key];
    if (colors == null) {
      return AppColor.color_text_33;
    }

    if (Get.isDarkMode == true) {
      if (colors.length == 2) {
        return colors[1];
      } else {
        return colors[0];
      }
    } else {
      return colors[0];
    }
  }
}

