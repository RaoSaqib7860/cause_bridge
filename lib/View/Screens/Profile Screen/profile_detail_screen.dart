import 'package:cause_bridge/View/Screens/Bottom%20Sheet/bottom_sheet.dart';
import 'package:cause_bridge/View/Screens/Post%20Detail/post_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Custom Widget/custom_home_card.dart';
import '../Comments Screen/comment_screen.dart';
import '../Settings/setting_screen.dart';
import 'other_profile_screen.dart';
import 'package:get/get.dart';

class ProfileDetailScreen extends StatefulWidget {
  const ProfileDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProfileDetailScreen> createState() => _ProfileDetailScreenState();
}

class _ProfileDetailScreenState extends State<ProfileDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            SizedBox(height: 7.h,),
            Padding(
              padding:  EdgeInsets.only(left: 5.w,right: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 9.h,
                        width: 18.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.5,color: Colors.green)
                        ),
                        child: Center(
                          child: Icon(Icons.person,size: 5.h,),
                        ),
                      ),
                      SizedBox(width: 3.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chineze_afamefuna',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 0.5.h,),
                          Text(
                            'United State',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 13.sp,

                            ),
                          ),
                          SizedBox(height: 0.5.h,),
                          Container(
                            // height: 3.3.h,
                            // width: 16.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                            ),
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 1.w,vertical: 0.5.h),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/svgs/edits.svg',color: Colors.white,height: 1.7.h,),
                                    SizedBox(width: 1.w,),
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,

                                      ),
                                    ),
                                    SizedBox(width: 3.w,)
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen(),));
                    },
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 4.h,left: 3.w),
                      child: Icon(Icons.more_vert,color: Color(0xffd9d9d9),size: 4.h,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 13.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '256',
                        style: TextStyle(
                          color: Color(0xff3A3A3A),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp
                        ),
                      ),
                      SizedBox(height: 0.4.h,),
                      Text(
                        'Following',
                        style: TextStyle(
                            color: Color(0xff6F6F6F),
                            fontSize: 11.sp
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 4.h,
                    width: 0.3.w,
                    color: Color(0xff6F6F6F),
                  ),
                  Column(
                    children: [
                      Text(
                        '45K',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp
                        ),
                      ),
                      SizedBox(height: 0.4.h,),
                      Text(
                        'Follower',
                        style: TextStyle(
                            color: Color(0xff6F6F6F),
                            fontSize: 11.sp
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 4.h,
                    width: 0.3.w,
                    color: Color(0xff6F6F6F),
                  ),
                  Column(
                    children: [
                      Text(
                        '100',
                        style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp
                        ),
                      ),
                      SizedBox(height: 0.4.h,),
                      Text(
                        'Post',
                        style: TextStyle(
                            color: Color(0xff6F6F6F),
                            fontSize: 11.sp
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ListView.builder(
                    itemCount: 2,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return CustomHomeCard(
                        cardOnTap:  () {

                          Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetailScreen(),));

                        },
                        commentOnTap: () {
                          Get.offAll(()=>CommentScreen(),);
                        },
                        profileImage: 'assets/asset/man.png',
                        profileName: 'Benjamin Dangais',
                        profileSubTitle: 'United State',
                        title: 'Why Volcano Explodes ?',
                        description: 'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions....',
                        commentText: '10',
                        likeText: '122',
                      );

            },),
                ))
          ],
        ),
      ),

    );
  }
}
