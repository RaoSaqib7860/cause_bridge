import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../Custom Widget/click_button.dart';
import '../Bottom Sheet/bottom_sheet.dart';
import '../Feeds Screen/new_feed_screen.dart';
import '../Notifications/notifications_screen.dart';

class CreateNewPostScreen extends StatefulWidget {
  const CreateNewPostScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPostScreen> createState() => _CreateNewPostScreenState();
}

class _CreateNewPostScreenState extends State<CreateNewPostScreen> {
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
              padding:  EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context) => BottomSheetScreen(),));
                        Get.offAll(()=>BottomSheetScreen(index: 0,));
                      },
                      child: Icon(Icons.close,color: Colors.white,size: 3.h,)),
                  SizedBox(width: 20.w,),
                  Text(
                    'Create New Post',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    color: Colors.white
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 4.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 2.h,),
                          Container(

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey.shade200,width: 1)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 2.w),
                              child: Column(
                                children: [
                                  SizedBox(height: 0.5.h,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 6.h,
                                        width: 10.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 1.5,color: Colors.green)
                                        ),
                                        child: Center(
                                          child: Icon(Icons.person,size: 2.h,),
                                        ),
                                      ),
                                      SizedBox(width: 3.w,),
                                      Text(
                                        'Chineze_afamefuna',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                  //SizedBox(height: 1.h,),
                                  Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 2.w),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Title goes here...',
                                        hintStyle: TextStyle(
                                          fontSize: 12.sp,
                                          color: Color(0xffBFBFBF)
                                        )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff727272),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Container(
                            height:20.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey.shade200,width: 1),
                              color: Colors.white
                            ),
                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              // minLines: 1,
                              textAlign: TextAlign.left,
                              maxLines: null,
                              expands: true,
                              textAlignVertical: TextAlignVertical.top,
                              style: TextStyle(fontSize: 12.sp),
                              //controller: desController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                //isDense: true,
                                hintText: 'Title goes Here...',
                                  hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color(0xffBFBFBF)
                                  ),
                                contentPadding: EdgeInsets.only(top: 1.h,left: 4.w,right: 2.w),
                              ),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Text(
                            'Tags',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff727272),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Container(
                            height:5.5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey.shade200,width: 1),
                                color: Colors.white
                            ),
                            child: Center(
                              child: TextField(
                                keyboardType: TextInputType.multiline,
                                // minLines: 1,
                                textAlign: TextAlign.left,
                                maxLines: null,
                                expands: true,
                                textAlignVertical: TextAlignVertical.top,
                                style: TextStyle(fontSize: 12.sp),
                                //controller: desController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  //isDense: true,
                                  hintText: '#tags',
                                  hintStyle: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color(0xffBFBFBF)
                                  ),
                                  contentPadding: EdgeInsets.only(top: 1.h,left: 4.w,right: 2.w),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Text(
                            'Area of research',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff727272),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Container(
                            height:5.5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey.shade200,width: 1),
                                color: Colors.white
                            ),
                            child: ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.offAll(()=> BottomSheetScreen(index: 4,));
                                    },
                                    child: Container(
                                      height: 4.2.h,
                                      //width: 25.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffF9F9F9)
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 1.h,),
                                          Icon(Icons.close,color: Color(0xff595959),size: 2.3.h,),
                                          SizedBox(width: 1.h,),
                                          Text(
                                            'China',
                                            style: TextStyle(
                                              color: Color(0xff595959),
                                              fontSize: 10.sp
                                            ),
                                          ),
                                          SizedBox(width: 2.h,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 2.w,),
                                ],
                              );
                            },),
                          ),
                          SizedBox(height: 1.h,),
                          Text(
                            'Topic of research',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff727272),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Container(
                            height:5.5.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey.shade200,width: 1),
                                color: Colors.white
                            ),
                            child: ListView.builder(
                              itemCount: 2,
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Get.offAll(()=> BottomSheetScreen(index: 4,));
                                      },
                                      child: Container(
                                        height: 4.2.h,
                                        //width: 25.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Color(0xffF9F9F9)
                                        ),
                                        child: Row(
                                          children: [
                                            SizedBox(width: 1.h,),
                                            Icon(Icons.close,color: Color(0xff595959),size: 2.3.h,),
                                            SizedBox(width: 1.h,),
                                            Text(
                                              'Data Science',
                                              style: TextStyle(
                                                  color: Color(0xff595959),
                                                  fontSize: 10.sp
                                              ),
                                            ),
                                            SizedBox(width: 2.h,),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 2.w,),
                                  ],
                                );
                              },),
                          ),
                          SizedBox(height: 1.h,),
                          Text(
                            'Upload Your Documents',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff727272),
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Container(
                            height: 20.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey.shade200,width: 1),
                                color: Colors.grey.shade100
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 2.h,),
                                SvgPicture.asset('assets/svgs/plusicon.svg',height: 7.5.h,color: Colors.green,),
                                SizedBox(height: 4.h,),
                                Text(
                                  'Upload your Document Here',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.sp
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 2.h,)
                        ],
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 8.h,
        color: Colors.white,
        child: Center(
          child: GestureDetector(
            onTap: () {
              Get.offAll(()=>BottomSheetScreen(index: 0,));
            },
            child: Container(
              height: 5.h,
              width: 90.w,
              decoration: BoxDecoration(
                color: Color(0xff4AB866),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text('Post',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 16)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
