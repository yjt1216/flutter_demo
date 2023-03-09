

class HttpApi{
  ///登录
  static const String login = '/admin/login';
  ///本月计划
  static const String month_plan = "/home/toMonth";
  ///今日待办
  static const String todo_day = "/home/toDay";
  ///理论考核 APP 根据id查询考试基本信息
  static const String theoryExamBaseInfo = "/theoryExam/selectAppExamById";
  ///理论考计划查看按钮
  static const String theoryExamCheck = '/theoryExam/selectById';

  //统计报告
  static const String statisticalReport = '/trainingPerson/report';

  ///轮播图管理
  //轮播图新增
  static const String bannerCreate = '/slideshow/create';
  //轮播图详情
  static const String bannerDetail = '/slideshow/detail';
  //医院信息查询
  static const String hospitalDetail = '/slideshow/historyDetail';
  //轮播图列表查询
  static const String banner = '/slideshow/list';
  //轮播图修改
  static const String bannerUpdate = '/slideshow/update';
  //轮播图状态修改
  static const String bannerStatus = '/slideshow/updateStatus';


  ///人员明细信息接口
  static const String personInfo = '/user/detail';
  ///个人中心详情
  static const String person_center = "/user/personalCenterDetail";
  ///意见反馈
  static const String feedback = '/feedback/create';
  ///反馈列表
  static const String feedbackList = '/feedback/list';

  ///头像上传
  static const String uploadHead = '/user/uploadImg';

  ///学分管理
  //一类学分
  static const String firstScore = '/scoreManage/fistScore';
  //二类学分
  static const String secondScore = '/scoreManage/secondScore';
  //年度一类学分统计
  static const String yearScoreCheck = '/scoreManage/annualCredit';
  //学分申请
  static const String scoreApply = '/scoreManage/apply';

  // 学分审核
  static const String scoreAudit = '/scoreManage/audit';


  ///微课堂,选修，必修列表
  static const String micro_class = "/microCourse/isMust";
  ///微课堂详情
  static const String miscro_detail = '/microCourse/detail';
  ///获取本月发起的培训计划
  static const String training_start = '/training/started';
  ///获取本月负责的培训计划
  static const String training_responsible = '/training/responsible';
  ///获取本月参加的培训计划
  static const String training_join = '/training/join';
  ///获取本月发起的理论考核
  static const String theory_start = '/theoryExam/selectByCreator';
  ///获取本月负责的理论考核
  static const String theory_responsible = '/theoryExam/selectByProctor';
  ///获取本月参加的理论考核
  static const String theory_join = '/theoryExam/selectByPerson';
  ///获取本月发起的操作考核
  static const String operate_start = '/operationExam/selectByCreator';
  ///获取本月负责的操作考试
  static const String operate_responsible = '/operationExam/selectByProctor';
  ///获取本月参加的操作考试
  static const String operate_join = '/operationExam/selectByPerson';
  ///获取动态消息列表
  static const String message = '/message/app/unreadList';
  //获取消息flag
  static const String messageFlag = '/message/models';
  ///人员明细
  static const String user_detail = '/user/detail';
  ///修改密码
  static const String change_pwd = '/user/changePassword';
  ///获取年度成绩列表
  static const String year_score = '/home/annualScore';
  ///获取指定年份的所有年度学分
  static const String annual_Credit = "/home/annualCredit";
  //微课堂 成绩查询
  static const String microCourseCredit = '/microCourse/annualCredit';
  //微课堂 更新微课学习进度
  static const String microCourseUpdateProcess = '/microCourse/updateLearningProcess';
  //微课堂 查询uid的所有课件和当前学习进度
  static const String microCourseCurrentLearning = '/microCourse/currentLearning';

  //培训 成绩查询
  static const String trainCourseCredit = '/trainingPerson/annualCredit';
  //理论考 成绩查询
  static const String theoryExamCredit = '/theoryExam/selectTheoryExamByUid';
  //操作考 成绩查询
  static const String operationExamCredit = '/operationExam/selectOperationExamByUid';


  ///获取通讯录
  static const String address_book = '/home/addressBook';
  //通讯录内根据姓名或工号 查找人员
  static const String addressBookSearch = '/home/searchNameOrCode';
  ///获取日程
  static const String schedule = '/home/calendarByDay';
  ///新增日程
  static const String add_schedule = '/calendar/createCalendar';
  ///已练习题目
  static const String practice = '/question/selectUserNum';
  ///错题汇总
  static const String error_num = '/question/selectUserErrorNum';
  ///获取题库练习列表
  static const String practice_list = '/questionLibrary/selectQuestionLibraryName';
  ///题库章节列表
  static const String question_chapter = '/questionLibrary/selectListApp';
  ///章节题库
  static const String question_list = '/questionLibrary/selectQuestionsApp';

  ///操作考未开始
  static const String action_no_start = '/operationExam/selectNoStart';
  ///操作考已结束
  static const String action_finish = '/operationExam/selectOver';
  //操作考审核--- 查看人员报名审核状态
  static const String operationExamApplyStatus = '/OperationExamSignUp/selectStatus';


  ///操作考已开始
  static const String action_start = '/operationExam/selectStart';
  ///操作考打分未开始
  static const String action_score_no_start = '/operationExam/selectScoreNoStart';
  ///操作考打分已开始
  static const String action_score_start = '/operationExam/selectScoreStart';
  ///操作考打分已结束
  static const String action_score_finish = '/operationExam/selectScoreOver';
  ///操作考详情
  static const String action_detail = '/operationExam/selectAppById';
  ///查询操作考计划
  //static const String operationDetail = '/operationSheet/selectById';

  ///操作考报名
  static const String action_sign_up = '/operationPerson/insertSignUpList';
  ///培训计划必修，选修
  static const String traning_list = '/training/isMust';
  ///培训历史列表查询接口
  static const String trainingHistoryList = '/training/historyList';
  ///理论考核未开始
  static const String theory_no_start = '/theoryExam/selectNoStart';
  ///理论考已开始
  static const String theory_ing = '/theoryExam/selectStart';
  ///理论考已结束
  static const String throry_finish = '/theoryExam/selectOver';

  //理论考核APP根据id查询考试人员得分
  static const String theoryExamScore = '/theoryExam/selectScoreById';

  ///错题提交
  static const String error_put = '/question/updateQuestionFinishOrError';
  ///错题巩固
  static const String error_review = '/question/selectQuestionErrorByUserId';
  /// 操作考核APP查看操作考已结束评分
  static const String action_item_detail = '/operationExam/selectSheetItemScoreById';
  //操作考 查看人员分数
  static const String operationPersonScore = '/operationExam/selectPersonScore';
  // APP我的操作考得分
  static const String operationSendMessage = '/operationExam/sendMessage';
  ///获取理论考试卷
  static const String theory_exam_paper = '/theoryExam/selectQuestionByExamId';
  ///获取操作考试参加的人员
  static const String operation_join_person = '/operationExam/selectAppPersonListBySheetId';

  // 操作考核APP 查看操作考已开始评分表
  static const String operationStatedScore = '/operationExam/selectSheetItemById';

  static const String operationLoseScore = '/operationExamList/selectSheetUser';

  //操作考核APP缺考按钮 缺考标记
  static const String operationExamMiss = '/operationExam/insertListMiss';
  //操作考核APP提交按钮
  static const String operationExamSubmit = '/operationExam/insertList';

  ///培训计划 详情
  static const String trainingDetail = '/training/detail';
  ///培训报名状态显示
  static const String trainingApplyStatus = '/trainingPerson/applyStatus';
  ///培训报名接口
  static const String trainingApply = '/trainingPerson/apply';
  ///培训签到接口
  static const String trainingSignIn  = '/trainingPerson/signIn';
  ///培训签到接口
  static const String trainingSignOut = '/trainingPerson/signOut';
  ///查询uid的所有培训课程和当前学习进度
  static const String trainingCourseLearn = '/trainingPerson/currentLearning';
  ///更新培训学习进度
  static const String trainingUpdateProcess = '/trainingPerson/updateLearningProcess';
  ///重置学习进度
  static const String trainingResetProcess = '/trainingPerson/resetProcess';

  //试题APP练习试题
  static const String questionSubmit = '/question/insertQuestionByUserList';
  //错题 提交
  static const String errorQuestionSubmit = '/question/updateQuestionFinishOrError';

  //APP理论考交卷
  static const String examSubmit = '/theoryExam/selectPass';
  //交卷
  static const String examUpdateStatus = '/theoryExam/updateExamStatus';
  //补考
  static const String resitExam = '/api/UPF/Questions/QuestionBank/GetMisTakeQuestion';

  //设置已读接口
  static const String readMessage = '/message/updateStatus';


  //课件/附件上传
  static const String uploadFile = '/file/upload';
  //课件/多附件上传
  static const String multiUploadFile = '/file/multi/upload';

  //消息详情接口
  static const String noticeDetailInfo = '/noticeManage/detail';

  //消息-查看附件 附件查看按钮
  static const String msgCheckFile = '/noticeManage/selectById';

  //消息删除 /noticeManage/delete
  static const String msgDelete = '/noticeManage/delete';

  //版本信息返回 /admin/version
  static const String appVersion = '/admin/version';
  //apk 下载
  static const String apkDownload = '/admin/apk';

}