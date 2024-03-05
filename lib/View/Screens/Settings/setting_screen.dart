import 'package:cause_bridge/View/Screens/Authentication/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Profile Screen/profile_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isClick = false;
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Color(0xff4AB866),
        child: Column(
          children: [
            SizedBox(height: 10.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/svgs/arrowb.svg',width: 7.w,)),
                  SizedBox(width: 30.w,),
                  Text(
                    'Setting',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  //border: Border.all(width: 0,color: Colors.white)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.black87.withAlpha(150),size: 5.w,),
                      contentPadding: EdgeInsets.only( top: 0.7.h,),
                      //enabled: true,
                      //isDense: true,
                      hintText: 'John doe',
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 13.sp
                      ),
                      //suffixIcon: Icon(Icons.close,color: Colors.grey,size: 5.w,)
                  ),
                ),
              ),
            ),
            SizedBox(height: 4.h,),
            Expanded(
                child: Container(
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 3.h,),
                        profileContainer(image: 'assets/svgs/edits.svg',text: 'Edit Profile'),
                        profileContainer(
                            image: 'assets/svgs/language.svg',
                            text: 'Language',
                          widget: Text(
                              '10+',
                          style: TextStyle(
                            color: Color(0xff4AB866)
                          ),
                          )
                        ),
                        profileContainer(
                            image: 'assets/svgs/follower.svg',
                            text: 'Follower',
                            widget: Text(
                              '1000+',
                              style: TextStyle(
                                  color: Color(0xff4AB866)
                              ),
                            )
                        ),
                        profileContainer(image: 'assets/svgs/save.svg',text: 'Saved Post'),
                        Text(
                          'Preferences',
                          style: TextStyle(
                              color: Colors.black,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/svgs/noti.svg',width: 4.w,),
                                SizedBox(width: 2.w,),
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      color: Color(0xff606060)
                                  ),
                                )
                              ],
                            ),
                            AdvancedSwitch(
                              controller: _controller,
                              activeColor: Colors.green,
                              //Colors.green,
                              inactiveColor: Colors.grey,
                              width: 10.w,
                              height: 2.8.h,
                              enabled: true,
                              disabledOpacity: 0.5,

                            )
                          ],
                        ),
                        SizedBox(height: 3.h,),
                        profileContainer(image: 'assets/svgs/acc.svg',text: 'Account & Privacy'),
                        profileContainer(
                            image: 'assets/svgs/theme.svg',
                            text: 'Theme',
                            widget: Text(
                              'Dark, Light, Use System',
                              style: TextStyle(
                                  color: Color(0xff4AB866)
                              ),
                            )
                        ),
                        profileContainer(image: 'assets/svgs/help.svg',text: 'Help'),
                        SizedBox(height: 2.h,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.offAll(()=>LoginScreen());
                              },
                              child: Container(
                                height: 5.h,
                                width: 33.w,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset('assets/svgs/logouts.svg',height: 3.h,),
                                        SizedBox(width: 2.w,),
                                        Text(
                                          'Log out',
                                          style: TextStyle(
                                              color: Colors.white,
                                            fontSize: 18.sp
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Row(
                        //       children: [
                        //         SvgPicture.asset('assets/svgs/edits.svg',width: 4.w,),
                        //         SizedBox(width: 2.w,),
                        //         Text(
                        //           'Edit Profile',
                        //           style: TextStyle(
                        //             fontSize: 15.sp,
                        //             color: Color(0xff606060)
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //     Icon(Icons.arrow_forward_ios_rounded,size: 4.w,color: Color(0xff606060)),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }

  Widget profileContainer({
    String? image,
    String? text,
    Widget? widget,
}){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(image!,width: 4.w,),
                SizedBox(width: 2.w,),
                Text(
                  text!,
                  style: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xff606060)
                  ),
                )
              ],
            ),
            Row(
              children: [
                if(widget!=null)
                widget,
                SizedBox(width: 2.w,),
                Icon(Icons.arrow_forward_ios_rounded,size: 4.w,color: Color(0xff606060)),
              ],
            ),
          ],
        ),
        SizedBox(height: 3.h,)
      ],
    );
  }

}
