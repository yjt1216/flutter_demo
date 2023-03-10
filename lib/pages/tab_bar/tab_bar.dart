
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/home/home.dart';
import 'package:flutter_demo/pages/mine/mine.dart';
import 'package:flutter_demo/pages/tab_bar/persistent_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

///
///
class PersistentBottomPage extends StatefulWidget {
  final BuildContext menuScreenContext;
  const PersistentBottomPage({Key? key, required this.menuScreenContext}) : super(key: key);

  @override
  _PersistentBottomState createState() => _PersistentBottomState();
}
class _PersistentBottomState extends State<PersistentBottomPage> {

  late PersistentTabController _controller;
  late bool _hideNavBar;

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const HomePage(),
      const HomePage(),
      const MinePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/images/tab/tab_message_selected.svg'),
        inactiveIcon: SvgPicture.asset('assets/images/tab/tab_message.svg'),
        title: "聊天",
        activeColorPrimary: const Color.fromRGBO(91, 87, 150, 1),
        inactiveColorPrimary: const Color.fromRGBO(140, 140, 140, 1),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/images/tab/tab_contacts_selected.svg'),
        inactiveIcon: SvgPicture.asset('assets/images/tab/tab_contacts.svg'),
        title: ("通讯录"),
        activeColorPrimary: const Color.fromRGBO(91, 87, 150, 1),
        inactiveColorPrimary: const Color.fromRGBO(140, 140, 140, 1),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/images/tab/tab_cloud_selected.svg'),
        inactiveIcon: SvgPicture.asset('assets/images/tab/tab_cloud.svg'),
        title: ("芸社区"),
        activeColorPrimary: const Color.fromRGBO(91, 87, 150, 1),
        inactiveColorPrimary: const Color.fromRGBO(140, 140, 140, 1),
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset('assets/images/tab/tab_mine_selected.svg'),
        inactiveIcon: SvgPicture.asset('assets/images/tab/tab_mine.svg'),
        title: ("我的"),
        activeColorPrimary: const Color.fromRGBO(91, 87, 150, 1),
        inactiveColorPrimary: const Color.fromRGBO(140, 140, 140, 1),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     // appBar: AppBar(title: const Text('Navigation Bar Demo')),
      body: PersistentTabView.custom(
        context,
        controller: _controller,
        screens: _buildScreens(),
        confineInSafeArea: true,
        itemCount: 4,
        handleAndroidBackButtonPress: true,
        stateManagement: true,
        hideNavigationBar: _hideNavBar, //是否隐藏底部tab bar
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        customWidget: CustomNavBarWidget(
          items: _navBarsItems(),
          onItemSelected: (index) {
            setState(() {
              _controller.index = index; // THIS IS CRITICAL!! Don't miss it!
            });
          },
          selectedIndex: _controller.index,
        ),
      ),
    );

  }


}