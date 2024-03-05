import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Bottom Sheet/bottom_sheet.dart';
import '../Messages/chet_screen.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({Key? key}) : super(key: key);

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  bool isSelected = false;
  int ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Color(0xff4AB866),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.offAll(()=>BottomSheetScreen(index: 0,));
                    },
                    child: SvgPicture.asset('assets/svgs/closee.svg',height: 2.h,),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'Comments (13)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
                child: Container(
              width: 100.w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 1.w),
                        child: Column(
                          children: [
                            Container(
                              //height: 6.h,
                              //width: 95.w,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      //height: 6.h,
                                      //width: 75.w,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 6.h,
                                            width: 10.w,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.green)),
                                            child: Center(
                                              child: Icon(
                                                Icons.person,
                                                size: 2.h,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:  EdgeInsets.only(top: 0.8.h),
                                                child: Container(
                                                  //height: 10.h,
                                                  width: 70.w,
                                                  child: RichText(
                                                      text: TextSpan(
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                            text: 'Chineze_afamefuna',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 13.sp,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: ' Hi, How’s going on?Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                                            style: TextStyle(
                                                              color: Colors.black.withAlpha(170),
                                                              fontSize: 12.sp,
                                                            )

                                                          )
                                                        ]
                                                      ),

                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              // RichText(
                                              //     text: TextSpan(
                                              //       children: [
                                              //         TextSpan(
                                              //           text: '3h',
                                              //           style: TextStyle(
                                              //             color: Colors.grey,
                                              //             fontSize: 11.sp
                                              //           )
                                              //         ),
                                              //         TextSpan(
                                              //             text: ' 1 Like ',
                                              //             style: TextStyle(
                                              //                 color: Colors.grey,
                                              //                 fontSize: 11.sp
                                              //             )
                                              //         ),
                                              //         TextSpan(
                                              //             text: '  Reply',
                                              //             style: TextStyle(
                                              //                 color: Colors.green.withAlpha(150),
                                              //                 fontSize: 11.sp
                                              //             )
                                              //         )
                                              //       ]
                                              //     )
                                              // )
                                              Row(
                                                children: [
                                                  Text(
                                                    '3h',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  Text(
                                                    '1 Like',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 2.w,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      ind = index;
                                                      setState(() {
                                                        isSelected = !isSelected;

                                                      });
                                                    },
                                                    child: Text(
                                                      'Reply',
                                                      style: TextStyle(
                                                        color: Colors.green.withAlpha(200),
                                                        fontSize: 11.sp,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),

                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(right: 2.w),
                                      child: SvgPicture.asset(
                                        'assets/svgs/likes.svg',
                                        height: 2.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // SizedBox(
                            //   height: 0.1.h,
                            // ),
                            if(isSelected == true && ind == index)
                              Container(
                                child: ListView.builder(
                                  itemCount: 2,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.only(
                                        top: 0.2.h, left: 13.w),
                                    child: Column(
                                      children: [
                                        Container(
                                          // height: 6.h,
                                          // width: 95.w,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 14.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  //height: 6.h,
                                                  //width: 75.w,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: 6.h,
                                                        width: 10.w,
                                                        decoration: BoxDecoration(
                                                            shape: BoxShape.circle,
                                                            border: Border.all(
                                                                width: 1.5,
                                                                color: Colors.green)),
                                                        child: Center(
                                                          child: Icon(
                                                            Icons.person,
                                                            size: 2.h,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 3.w,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(top: 0.8.h),
                                                            child: Container(
                                                              //height: 10.h,
                                                                width: 50.w,
                                                                child: RichText(

                                                                  text: TextSpan(
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text: 'Chineze_afamefuna',
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontSize: 13.sp,
                                                                              fontWeight: FontWeight.bold
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                            text: ' Hi, How’s going on? Lorem',
                                                                            style: TextStyle(
                                                                              color: Colors.black.withAlpha(170),
                                                                              fontSize: 12.sp,
                                                                            )

                                                                        )
                                                                      ]
                                                                  ),

                                                                )
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 1.h,
                                                          ),
                                                          // RichText(
                                                          //     text: TextSpan(
                                                          //       children: [
                                                          //         TextSpan(
                                                          //           text: '3h',
                                                          //           style: TextStyle(
                                                          //             color: Colors.grey,
                                                          //             fontSize: 11.sp
                                                          //           )
                                                          //         ),
                                                          //         TextSpan(
                                                          //             text: ' 1 Like ',
                                                          //             style: TextStyle(
                                                          //                 color: Colors.grey,
                                                          //                 fontSize: 11.sp
                                                          //             )
                                                          //         ),
                                                          //         TextSpan(
                                                          //             text: '  Reply',
                                                          //             style: TextStyle(
                                                          //                 color: Colors.green.withAlpha(150),
                                                          //                 fontSize: 11.sp
                                                          //             )
                                                          //         )
                                                          //       ]
                                                          //     )
                                                          // )
                                                          Row(
                                                            children: [
                                                              Text(
                                                                '3h',
                                                                style: TextStyle(
                                                                  color: Colors.grey,
                                                                  fontSize: 11.sp,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 2.w,
                                                              ),
                                                              Text(
                                                                '1 Like',
                                                                style: TextStyle(
                                                                  color: Colors.grey,
                                                                  fontSize: 11.sp,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 2.w,
                                                              ),
                                                              Text(
                                                                'Reply',
                                                                style: TextStyle(
                                                                  color: Colors.green.withAlpha(200),
                                                                  fontSize: 11.sp,
                                                                ),
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(right: 2.w),
                                                  child: SvgPicture.asset(
                                                    'assets/svgs/likes.svg',
                                                    height: 2.h,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        )
                                        // Padding(
                                        //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        //   child: Divider(
                                        //     thickness: 1,
                                        //     //color: Colors.black,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            //   child: Divider(
                            //     thickness: 1,
                            //     //color: Colors.black,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
                    child: Center(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 2.w),
                        child: TextFormField(
                          style: TextStyle(
                              color: Color(0xffCDCDCD),
                              fontSize: 12.sp
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 2.h),
                              hintText: 'Enter your comment',
                              hintStyle: TextStyle(
                                  color: Color(0xffCDCDCD),
                                  fontSize: 12.sp
                              ),
                          ),
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
      ),
    );
  }
}
