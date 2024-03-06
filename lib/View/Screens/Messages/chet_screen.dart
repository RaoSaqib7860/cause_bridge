import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Bottom Sheet/bottom_sheet.dart';

class ChetScreen extends StatefulWidget {
  const ChetScreen({Key? key}) : super(key: key);

  @override
  State<ChetScreen> createState() => _ChetScreenState();
}

class _ChetScreenState extends State<ChetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Color(0xff4AB866),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(height: 9.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            //Navigator.pop(context);
                            Get.offAll(BottomSheetScreen(index: 1,));
                          },
                          child: SvgPicture.asset('assets/svgs/arrowb.svg',width: 8.w,)),
                      //SizedBox(width: 30.w,),
                      Text(
                        'Chat',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(Icons.more_vert,color: Colors.white,),
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Container(
                        height: 6.h,
                        width: 12.w,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(
                                width: 1.5,
                                color: Colors.green)),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: 3.h,
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chineze_afamefuna',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 0.6.h,),
                          Text(
                            'Last seen: 2 hours ago',
                            style: TextStyle(
                                color: Colors.white.withAlpha(200),
                                fontSize: 13.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                Expanded(
                    child: Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 4.w),
                          child: Column(
                            children: [
                              SizedBox(height: 2.h,),
                              Row(
                                children: [
                                  Container(
                                    height: 6.h,
                                    width: 12.w,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1.5,
                                            color: Colors.green)),
                                    child: Center(
                                      child: Icon(
                                        Icons.person,
                                        size: 3.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2.w,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start  ,
                                    children: [
                                      Container(
                                        height: 5.h,
                                        //width: 20.w,
                                        decoration: BoxDecoration(
                                          color: Color(0xffF4F4F4),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                            child: Text(
                                              'Hi, How’s going on?',
                                              style: TextStyle(
                                                fontSize: 11.sp,
                                                color: Colors.black
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 0.5.h,),
                                      Text(
                                        '12:30 AM',
                                        style: TextStyle(
                                          color: Color(0xff9A9A9A),
                                          fontSize: 9.sp
                                        ),
                                      )
                                    ],
                                  )
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
            Positioned(
              bottom: 0,
                child: Container(
                  height: 9.h,
                  width: 100.w,
                  color: Color(0xff4AB866),
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 5.w),
                    child: Column(
                      children: [
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            SvgPicture.asset('assets/svgs/plusicon.svg',height: 2.5.h,),
                            SizedBox(width: 3.w,),
                            Container(
                              height: 4.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white
                                //border: Border.all(width: 0,color: Colors.white)
                              ),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                child: TextFormField(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.sp
                                  ),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter your message',
                                    hintStyle: TextStyle(
                                        color: Color(0xffCDCDCD),
                                        fontSize: 12.sp
                                    ),
                                    contentPadding: EdgeInsets.only(bottom: 2.h),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 3.w,),
                            Container(
                              height: 4.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                              child: Center(
                                child: SvgPicture.asset('assets/svgs/Send.svg',height: 2.3.h,color: Colors.green,),
                              ),
                            )
                          ],
                        )
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
}
