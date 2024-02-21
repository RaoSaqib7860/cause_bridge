import 'package:cause_bridge/View/Screens/Post%20Detail/post_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'other_profile_screen.dart';

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
                          Text(
                            'United State',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 13.sp,

                            ),
                          ),
                          Container(
                            height: 3.3.h,
                            width: 16.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                            ),
                            child: Center(
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 1.w),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/svgs/edits.svg',color: Colors.white,height: 2.h,),
                                    SizedBox(width: 1.w,),
                                    Text(
                                      'Edit',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.sp,

                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 4.h),
                    child: Icon(Icons.more_vert,color: Color(0xffd9d9d9),),
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
                          '256',
                          style: TextStyle(
                            color: Color(0xff3A3A3A),
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp
                          ),
                        ),
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
              SizedBox(height: 1.h,),
              Expanded(
                  child: ListView.builder(
                    itemCount: 2,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 36.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 1.5.h,),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => PostDetailScreen(),));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 1.w),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 4.5.h,
                                                width: 9.w,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(width: 1.5,color: Colors.green)
                                                ),
                                                child: Center(
                                                  child: Icon(Icons.person,size: 2.h,),
                                                ),
                                              ),
                                              SizedBox(width: 2.w,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Chineze_afamefuna',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13.sp,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  Text(
                                                    'United State',
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 12.sp,

                                                    ),
                                                  ),

                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 0.2.h,),
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
                                                borderRadius: BorderRadius.circular(10),
                                                child: Container(
                                                  height: 13.h,
                                                  width: 32.w,
                                                  decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                    color: Colors.white
                                                  ),
                                                  child: Image(image: AssetImage('assets/asset/text.png'),fit: BoxFit.cover,),
                                                ),
                                              ),
                                              SizedBox(width: 4.w,)
                                            ],
                                          );
                                        },),
                                      ),
                                      Text(
                                        'Why Volcano Explodes ?',
                                        style: TextStyle(
                                          color: Color(0xff4AB866),
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Expanded(
                                          child: Text(
                                            'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions....',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 4,
                                            style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: 12.sp,
                                              color: Color(0xff585858)
                                            ),
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
                                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                                          color: Color(0xffa6aea8)
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  SvgPicture.asset('assets/svgs/Chat.svg',height: 3.h,),
                                                  SizedBox(width: 1.w,),
                                                  Text(
                                                    '10',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.sp,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                  SizedBox(width: 2.w,),
                                                  SvgPicture.asset('assets/svgs/like.svg',height: 3.h,),
                                                  SizedBox(width: 1.w,),
                                                  Text(
                                                    '122',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16.sp,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset('assets/svgs/Send.svg',height: 2.3.h,),
                                                  SizedBox(width: 3.w,),
                                                  SvgPicture.asset('assets/svgs/Sub.svg',height: 2.3.h,),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 2.h,)
                        ],
                      );
              },))
            ],
          ),
        ),
      ),

    );
  }
}
