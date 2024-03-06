import 'package:cause_bridge/View/Screens/Comments%20Screen/comment_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';

import '../../Custom Widget/custom_home_card.dart';
import '../Feeds Screen/new_feed_screen.dart';
import '../Post Detail/post_detail_screen.dart';
import 'package:get/get.dart';

class OtherProfileScreen extends StatefulWidget {
  const OtherProfileScreen({Key? key}) : super(key: key);

  @override
  State<OtherProfileScreen> createState() => _OtherProfileScreenState();
}

class _OtherProfileScreenState extends State<OtherProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              SizedBox(height: 7.h,),
              Row(
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
                          SizedBox(height: 0.3.h,),
                          Text(
                            'China',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 13.sp,

                            ),
                          ),
                          SizedBox(height: 0.3.h,),
                          Row(
                            children: [
                              Container(
                                // height: 3.h,
                                // width: 20.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff4AB866)
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 4.w),
                                  child: Text(
                                    'Follow',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,

                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 2.w,),
                              Container(
                                // height: 3.h,
                                // width: 7.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xff4AB866)
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 0.4.h,horizontal: 1.2.w),
                                  child: SvgPicture.asset('assets/svgs/whatsapp.svg',height: 2.h,),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 2.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'China',
                          style: TextStyle(
                              color: Color(0xff3A3A3A),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp
                          ),
                        ),
                        SizedBox(height: 0.4.h,),
                        Text(
                          'Country',
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
                          'Ph.D',
                          style: TextStyle(
                              color: Color(0xff3A3A3A),
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp
                          ),
                        ),
                        SizedBox(height: 0.4.h,),
                        Text(
                          'Education',
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
                  child: ListView.builder(
                    itemCount: 2,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return CustomHomeCard(
                        cardOnTap:  () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetailScreen(),));
                        },
                        commentOnTap: () {
                          Get.offAll(()=>CommentScreen());
                        },
                        profileImage: 'assets/asset/man.png',
                        profileName: 'Benjamin Dangais',
                        profileSubTitle: 'United State',
                        title: 'Why Volcano Explodes ?',
                        description: 'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions....',
                        commentText: '10',
                        likeText: '122',
                      );
                    },))
            ],
          ),
        ),
      ),

    );
  }
}
