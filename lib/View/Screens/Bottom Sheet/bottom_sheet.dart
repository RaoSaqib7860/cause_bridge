import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../Feeds Screen/new_feed_screen.dart';
import '../Messages/mmessage_screen.dart';
import '../Post Detail/create_new_post_screen.dart';
import '../Profile Screen/profile_detail_screen.dart';
import '../Search/search_main_screen.dart';
import 'bottom_selector_icon.dart';

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
    return Scaffold(
      backgroundColor: Colors.green,
      body: PersistentTabView.custom(
        context,
        itemCount: 5, backgroundColor: Colors.green,
        controller: persistentcontroller,
        selectedTabScreenContext: (context) {},
        screens: _buildScreens(),
        confineInSafeArea: true,
        //bottomScreenMargin: 0,
        //backgroundColor: Colors.transparent,
        onWillPop: (v) async {
          return true;
        },
        handleAndroidBackButtonPress: true,
        //resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
        ),
        customWidget: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: CustomNavBarWidget(
            items: _navBarsItems(),
            selectedIndex: persistentcontroller!.index,
            onItemSelected: (v) {
              // if (current_index == v) {
              //   GlobalBottomRepository.current_tab.add(v);
              //   print('current_index=v');
              // }
              // if (v == 2) {
              //   notifier_active_create_itinerary.value =
              //   !notifier_active_create_itinerary.value;
              // } else {
              //   setState(() {
              //     _controller.index = v;
              //   });
              // }
              // current_index = v;
              // print('${_controller.index}');
              persistentcontroller!.index = v;
              setState(() {});
            },
          ),
        ),
      ),
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

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SizedBox(
            height: 2.4.h,
            child: SvgPicture.asset(
              'assets/svgs/homeicon.svg',
            ),
          ),
          inactiveIcon: SizedBox(
            height: 2.4.h,
            child: SvgPicture.asset(
              'assets/svgs/homeicon.svg',
            ),
          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white),
      PersistentBottomNavBarItem(
          icon: SizedBox(
            child: SvgPicture.asset(
              'assets/svgs/messageicon.svg',
            ),
            height: 2.6.h,
          ),
          inactiveIcon: SizedBox(
            child: SvgPicture.asset(
              'assets/svgs/messageicon.svg',
            ),
            height: 2.6.h,
          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white),
      PersistentBottomNavBarItem(
          icon: SizedBox(
            child: SvgPicture.asset('assets/svgs/plusicon.svg'),
            height: 2.8.h,
          ),
          inactiveIcon: SizedBox(
            child: SvgPicture.asset('assets/svgs/plusicon.svg'),
            height: 2.8.h,
          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white),
      PersistentBottomNavBarItem(
          icon: SizedBox(
            child: SvgPicture.asset('assets/svgs/personicon.svg'),
            height: 3.h,
          ),
          inactiveIcon: SizedBox(
            child: SvgPicture.asset('assets/svgs/personicon.svg'),
            height: 3.h,
          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white),
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/svgs/searchicon.svg',
            height: 2.2.h,
          ),
          inactiveIcon: SvgPicture.asset(
            'assets/svgs/searchicon.svg',
            height: 2.2.h,
          ),
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.white),
    ];
  }
}

class CustomNavBarWidget extends StatelessWidget {
  final int? selectedIndex;
  final List<PersistentBottomNavBarItem>? items;
  final ValueChanged<int>? onItemSelected;

  CustomNavBarWidget({
    Key? key,
    this.selectedIndex,
    @required this.items,
    this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                child: IconTheme(
                  data: IconThemeData(
                      size: 26.0,
                      color: isSelected
                          ? (item.activeColorSecondary == null
                              ? item.activeColorPrimary
                              : item.activeColorSecondary)
                          : item.inactiveColorPrimary == null
                              ? item.activeColorPrimary
                              : item.inactiveColorPrimary),
                  child: !isSelected ? item.icon : item.inactiveIcon!,
                ),
              ),
            ],
          ),
        ),
        if (isSelected)
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, left: 4),
              child: SizedBox(
                width: 16,
                height: 2.5,
                child: Container(color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          // CustomPaint(
          //   size: Size(100.w, (100.w * 0.34).toDouble()),
          //   painter: RPSCustomPainter(),
          // ),
          SvgPicture.asset(
            'assets/asset/bottom_background.svg',
            width: 100.w,
            fit: BoxFit.fill,
            // height: double.infinity,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        this.onItemSelected!(0);
                      },
                      child: _buildItem(items![0], selectedIndex == 0),
                    ),
                    GestureDetector(
                      onTap: () {
                        this.onItemSelected!(1);
                      },
                      child: _buildItem(items![1], selectedIndex == 1),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20.w,
                child: Center(
                    child: Transform.translate(
                  offset: Offset(0, -2.5.h),
                  child: InkWell(
                      onTap: () {
                        this.onItemSelected!(2);
                      },
                      child: Center(
                        child: Stack(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle)),
                            SvgPicture.asset('assets/svgs/plus_button.svg'),
                          ],
                        ),
                      )),
                )),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        this.onItemSelected!(3);
                      },
                      child: _buildItem(items![3], selectedIndex == 3),
                    ),
                    GestureDetector(
                      onTap: () {
                        this.onItemSelected!(4);
                      },
                      child: _buildItem(items![4], selectedIndex == 4),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
