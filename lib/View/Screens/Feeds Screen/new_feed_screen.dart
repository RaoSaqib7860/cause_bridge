import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Comments Screen/comment_screen.dart';
import '../Messages/chet_screen.dart';
import '../Notifications/notifications_screen.dart';
import '../Post Detail/post_detail_screen.dart';
import '../Profile Screen/other_profile_screen.dart';
import '../Profile Screen/profile_screen.dart';
import '../Settings/setting_screen.dart';

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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SettingScreen(),
                                ));
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
                                        'assets/svgs/add_icon.svg'),
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
                      return Column(
                        children: [
                          Container(
                            height: 36.h,
                            width: 90.h,
                            decoration: BoxDecoration(
                              color: Color(0xffedf8f0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 1.5.h,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    OtherProfileScreen(),
                                              ));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 1.w),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 4.5.h,
                                                width: 9.w,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image(
                                                  image: AssetImage(
                                                      'assets/asset/man.png'),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Benjamin Dangais',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    'United State',
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 10.sp,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.7.h,
                                      ),
                                      Container(
                                        height: 13.h,
                                        child: ListView.builder(
                                          itemCount: 3,
                                          scrollDirection: Axis.horizontal,
                                          //padding: EdgeInsets.symmetric(horizontal: 1.w),
                                          itemBuilder: (context, index) {
                                            return Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  child: Container(
                                                    height: 13.h,
                                                    width: 32.w,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: Colors.white),
                                                    child: Image(
                                                      image: AssetImage(
                                                          'assets/asset/text.png'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 4.w,
                                                )
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: 1.h),
                                      Text(
                                        'Why Volcano Explodes ?',
                                        style: TextStyle(
                                            color: Color(0xff4AB866),
                                            fontFamily: 'AlfaSlabOne',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 0.7.h),
                                      Expanded(
                                          child: Text(
                                        'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions....',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 4,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 12.sp,
                                            color: Color(0xff585858)),
                                      ))
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: 5.5.h,
                                      width: 90.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(30),
                                              bottomRight: Radius.circular(30)),
                                          color: Color(0xffa6aea8)),
                                      child: Center(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5.w),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  CommentScreen(),
                                                            ));
                                                      },
                                                      child: SvgPicture.asset(
                                                        'assets/svgs/Chat.svg',
                                                        height: 3.h,
                                                      )),
                                                  SizedBox(
                                                    width: 1.w,
                                                  ),
                                                  Text(
                                                    '10',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  SvgPicture.asset(
                                                    'assets/svgs/like.svg',
                                                    height: 3.h,
                                                  ),
                                                  SizedBox(
                                                    width: 1.w,
                                                  ),
                                                  Text(
                                                    '122',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/svgs/Send.svg',
                                                    height: 2.3.h,
                                                  ),
                                                  SizedBox(
                                                    width: 3.w,
                                                  ),
                                                  SvgPicture.asset(
                                                    'assets/svgs/Sub.svg',
                                                    height: 2.3.h,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          )
                        ],
                      );
                    },
                  ),
                ))
              ],
            ),
            // Positioned(
            //     bottom: 2.h,
            //     left: 5.w,
            //     child: GestureDetector(
            //       onTap: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => ProfileScreen(),
            //             ));
            //       },
            //       child: Container(
            //         height: 7.h,
            //         width: 90.w,
            //         decoration: BoxDecoration(
            //             color: Colors.white,
            //             borderRadius: BorderRadius.circular(10),
            //             boxShadow: [
            //               BoxShadow(
            //                   color: Colors.grey.withAlpha(50),
            //                   offset: Offset(-1, -1),
            //                   blurRadius: 1,
            //                   spreadRadius: 0.5),
            //               BoxShadow(
            //                   color: Colors.grey.withAlpha(50),
            //                   offset: Offset(1, 1),
            //                   blurRadius: 1,
            //                   spreadRadius: 0.5)
            //             ]),
            //         child: Padding(
            //           padding: EdgeInsets.symmetric(horizontal: 3.w),
            //           child: Column(
            //             children: [
            //               SizedBox(
            //                 height: 1.h,
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text(
            //                     'Profile Completion',
            //                     style: TextStyle(
            //                         color: Colors.green, fontSize: 15.sp),
            //                   ),
            //                   Text(
            //                     '25%',
            //                     style: TextStyle(
            //                         color: Colors.green, fontSize: 15.sp),
            //                   )
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 1.h,
            //               ),
            //               LinearProgressIndicator(
            //                 value: controller.value,
            //                 semanticsLabel: 'Linear progress indicator',
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }
}
