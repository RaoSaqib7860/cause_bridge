import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Feeds Screen/new_feed_screen.dart';
import '../Messages/mmessage_screen.dart';
import '../Post Detail/create_new_post_screen.dart';
import '../Profile Screen/profile_detail_screen.dart';
import '../Search/search_main_screen.dart';

PersistentTabController? persistentcontroller;
bool selectHome = true;
 //var hideNavbar = false;
// var card_count = 0.obs;

class BottomSheetScreen extends StatefulWidget {
  final int? index;
  const BottomSheetScreen({Key? key, this.index = 0}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {

  @override
  void initState() {
    persistentcontroller = PersistentTabController(initialIndex: widget.index!);
    super.initState();
  }
  bool? reel_active = false;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(reel_active: reel_active!),
      controller: persistentcontroller,
      confineInSafeArea: true,
      navBarHeight: 55,
      decoration: NavBarDecoration(
        colorBehindNavBar: Colors.white,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40))
      ),
      //hideNavigationBar: hideNavbar,
      backgroundColor: Colors.green,
      // backgroundColor: Theme.of(context).brightness == Brightness.dark
      //     ? Colors.blueGrey
      //     : Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      // onItemSelected: (index) {
      //   if (index == 3) {
      //     print('call');
      //     add_cart_stream.add(3);
      //     get_card_cout();
      //   }
      //   if (index == 1) {
      //     print('call');
      //     add_cart_stream.add(1);
      //   }
      //   if (index == 0) {
      //     home_screen_scroll_controller.animateTo(0,
      //         duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      //   }
      //   if(index==2){
      //     order_screen_scroll_controller.animateTo(0,
      //         duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
      //   }
      // },
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.simple,
    );
  }

  List<Widget> _buildScreens() {
    return [
      NewFeedScreen(),
      MessagesScreen(),
      CreateNewPostScreen(),
      ProfileDetailScreen(),
      SearchScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems({bool? reel_active}) {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/homeicon.svg',
            height: 24,
          ),
           inactiveIcon: SvgPicture.asset(
            'assets/svgs/homeicon.svg',
            height: 24,

          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white
      ),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/messageicon.svg',
            height: 24,
          ),
          inactiveIcon: SvgPicture.asset(
            'assets/svgs/messageicon.svg',
            height: 24,

          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white
      ),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/plusicon.svg',
            height: 20,
          ),
          inactiveIcon: SvgPicture.asset(
            'assets/svgs/plusicon.svg',
            height: 20,

          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white
      ),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/personicon.svg',
            height: 24,
          ),
          inactiveIcon: SvgPicture.asset(
            'assets/svgs/personicon.svg',
            height: 24,
          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white
      ),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/searchicon.svg',
            height: 20,
          ),
          inactiveIcon: SvgPicture.asset(
            'assets/svgs/searchicon.svg',
            height: 20,

          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white
      ),
    ];
  }

}
