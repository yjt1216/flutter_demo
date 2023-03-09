
import 'package:flutter/material.dart';
import 'package:flutter_demo/components/screening_widget/screening_widget.dart';
import 'package:get/get.dart';

///tab_bar 子界面
///
class MinePage extends StatefulWidget {

  const MinePage({Key? key}) : super(key: key);

  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {

  ScreenController controller = ScreenController();
  List<String> options = [
    "总监",
    "监理工程师",
    "监理员",
    "造价工程师",
    "质量检测员",
    "建造师",
    "安全工程师",
    "造价员",
    "五大员",
    "三类人员",
    "其他执业人员"
  ];

  int selectIndex = 0;


  @override
  void initState() {

    super.initState();
    selectIndex = 0;

  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [

            const SizedBox(height: 60,),

            ElevatedButton(onPressed: (){}, child: const Text('')),

            Container(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: 'SEX'),
                // 设置默认值
                value: options.first,
                // 选择回调
                onChanged: (String? newPosition) {
                  setState(() {});
                },
                // 传入可选的数组
                items: options.map((String sex) {
                  return DropdownMenuItem(value: sex, child: Text(sex));
                }).toList(),
              ),
            ),
          ],
        ),
      ),

    );
  }


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const SEX = ['男', '女', '保密'];
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: DropdownButtonFormField<String>(
          isExpanded: true,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), labelText: 'SEX'),
          // 设置默认值
          value: '男',
          // 选择回调
          onChanged: (String? newPosition) {
            setState(() {});
          },
          // 传入可选的数组
          items: SEX.map((String sex) {
            return DropdownMenuItem(value: sex, child: Text(sex));
          }).toList(),
        ),
      ),
    );
  }
}