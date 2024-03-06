import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Bottom Sheet/bottom_sheet.dart';
import '../Feeds Screen/new_feed_screen.dart';
import '../Search/search_main_screen.dart';
import 'package:get/get.dart';

class PostDetailScreen extends StatefulWidget {
  const PostDetailScreen({Key? key}) : super(key: key);

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                            onTap:
                                () {
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => NewFeedScreen(),));
                              Get.offAll(()=>BottomSheetScreen());
                            },
                            child: SvgPicture.asset('assets/svgs/arrowbutton.svg',height: 4.h,)),
                        SizedBox(width: 3.w,),
                        Text(
                          'Back',
                          style: TextStyle(
                            color: Color(0xff4AB866),
                            fontSize: 12.sp,
                             // fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green.shade50
                              ),
                              child: Icon(Icons.arrow_back_ios_new_outlined,size: 1.5.h,color: Color(0xff4AB866),),
                            ),
                            SizedBox(height: 1.h,),
                            Text(
                              'Next',
                              style: TextStyle(
                                  color: Color(0xff4AB866),
                                  fontSize: 11.sp,
                                 // fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 5 .w,),
                        Column(
                          children: [
                            Container(
                              // height: 2.5.h,
                              // width: 5.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green.shade50
                              ),
                              child: Icon(Icons.arrow_forward_ios,size: 1.5.h,color: Color(0xff4AB866),),
                            ),
                            SizedBox(height: 1.h,),
                            Text(
                              'Previous',
                              style: TextStyle(
                                  color: Color(0xff4AB866),
                                  fontSize: 11.sp,
                                //fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 4.h,),
                Text(
                  'Why Volcano Explodes ? As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions. Magmas with high silica content tend to erupt violently, because they are viscious. They form volcanoes like Krakatau and Tambora in Indonesia, and Mount Rainier and Mount St.',
                  //maxLines: 10,
                ),
                SizedBox(height: 2.h,),
                GestureDetector(
                  onTap: () {

                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Why Volcano Explodes ?',
                          style: TextStyle(
                            color: Color(0xff4AB866),
                            fontSize: 15.sp,
                            fontFamily: 'AlfaSlabOne',
                          ),
                        ),
                        SizedBox(height: 0.5.h,),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions.  ',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                    color: Color(0xff585858)
                                )
                              ),
                              if(isSelected == false)
                                TextSpan(
                                    text: 'Show more',
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                      color: Color(0xff4AB866),
                                      fontWeight: FontWeight.bold
                                    )
                                ),
                              if(isSelected == true)
                                TextSpan(
                                    text: 'As magma rises and pressure is released, gas bubbles (mainly of water vapor and carbon dioxide) form and expand rapidly, causing explosions',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color(0xff585858)
                                    )
                                )
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
