import 'package:cause_bridge/View/Screens/Search/person_screen.dart';
import 'package:cause_bridge/View/Screens/Search/research_screen.dart';
import 'package:cause_bridge/View/Screens/Search/tages_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Post Detail/create_new_post_screen.dart';
import 'chet_screen.dart';
import 'package:get/get.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  int? index = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Container(
              height: 24.h,
              width: 100.w,
              color: Colors.green,
              child: Column(
                children: [
                  SizedBox(height: 10.h,),
                   Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/svgs/Group17.svg',height: 2.2.h,),
                        Text('Messages',style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: Colors.white)),
                        SvgPicture.asset('assets/svgs/message.svg',height: 2.2.h,),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Container(
                    height: 5.h,
                    width: 92.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
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
                          hintText: 'Search \"your friend\"',
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 13.sp
                          ),
                          suffixIcon: Icon(Icons.close,color: Colors.grey,size: 4.w,)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recent',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Expanded(child: ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => ChetScreen(),));
                        Get.off(ChetScreen());
                      },
                      child: Container(
                        //height: 6.h,
                        //width: 95.w,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                //height: 6.h,
                                width: 75.w,
                                child: Row(
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height:0.5.h,),
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
                                          'hi, John how are you doing with',
                                          style: TextStyle(
                                            color: Colors.green.withAlpha(200),
                                            fontSize: 10.sp,

                                          ),
                                        ),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Text('2 Days ago',style: TextStyle(color: Colors.grey,fontSize: 11.sp)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 2,
                        //color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),),),
          ],
        ),
      ),
    );
  }
}
