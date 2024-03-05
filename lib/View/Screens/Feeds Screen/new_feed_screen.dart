import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Custom Widget/custom_home_card.dart';
import '../Comments Screen/comment_screen.dart';
import '../Messages/chet_screen.dart';
import '../Notifications/notifications_screen.dart';
import '../Post Detail/post_detail_screen.dart';
import '../Profile Screen/other_profile_screen.dart';
import '../Profile Screen/profile_screen.dart';
import '../Settings/setting_screen.dart';
import 'package:get/get.dart';

class NewFeedScreen extends StatefulWidget {
  const NewFeedScreen({Key? key}) : super(key: key);

  @override
  State<NewFeedScreen> createState() => _NewFeedScreenState();
}

class _NewFeedScreenState extends State<NewFeedScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => SettingScreen(),
                            //     ));
                          },
                          child: SvgPicture.asset(
                            'assets/svgs/camm.svg',
                            height: 4.5.h,
                          )),
                      Image(
                        image: AssetImage(
                            'assets/asset/Cause-Bridge-Logo-2 2.png'),
                        width: 30.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotificationsScreen(),
                                ));
                          },
                          child: SvgPicture.asset(
                            'assets/svgs/notifi.svg',
                            height: 4.5.h,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 10.h,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 14.w,
                                  padding: EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: 1.5, color: Colors.green)),
                                  child: Image(
                                    image: AssetImage('assets/asset/man.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 7.h,
                                  width: 14.w,
                                  child: Center(
                                    child: SvgPicture.asset(
                                        'assets/svgs/add_icon.svg',width: 4.w,),
                                  ),
                                )
                              ],
                            ),
                            //
                            Text(
                              'you',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 3.w),
                    Expanded(
                      child: Container(
                        height: 10.h,
                        child: ListView.builder(
                          itemCount: 9,
                          padding: EdgeInsets.only(right: 4.w),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 7.h,
                                      width: 14.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 1.5, color: Colors.green)),
                                      child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/asset/man2.png'),
                                        ),
                                      ),
                                    ),
                                    //SizedBox(height: 1.h,),
                                    Text(
                                      'Smith',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11.sp),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 3.w,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ListView.builder(
                    itemCount: 4,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return CustomHomeCard(
                        profileOnTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtherProfileScreen(),));
                        },
                        commentOnTap: () {
                          Get.offAll(()=>CommentScreen());
                        },
                      );
                    },
                  ),
                ))
              ],
            ),
            Positioned(
                bottom: 2.h,
                left: 5.w,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                  },
                  child: Container(
                    height: 7.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withAlpha(50),
                              offset: Offset(-1, -1),
                              blurRadius: 1,
                              spreadRadius: 0.5),
                          BoxShadow(
                              color: Colors.grey.withAlpha(50),
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: 0.5)
                        ]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Profile Completion',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15.sp),
                              ),
                              Text(
                                '25%',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 15.sp),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          LinearProgressIndicator(
                            value: controller.value,
                            semanticsLabel: 'Linear progress indicator',
                            color: Color(0xff4AB866),
                            borderRadius: BorderRadius.circular(10),
                            backgroundColor: Colors.grey.withAlpha(100),
                            //semanticsValue: '50',
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
