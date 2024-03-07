import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Comments Screen/comment_screen.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
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
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/svgs/closee.svg',height: 2.h,)),
                  SizedBox(width: 20.w,),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Expanded(
                child: Container(
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.h,),
                      Expanded(child: ListView.builder(
                        itemCount: 10,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) => Padding(
                          padding:  EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 1.w),
                          child: Column(
                            children: [
                              Container(
                                //height: 6.h,
                                //width: 95.w,
                                child: Padding(
                                  padding:  EdgeInsets.symmetric(horizontal: 4.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        //height: 6.h,
                                        //width: 75.w,
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
                                                      fontSize: 13.sp,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                                SizedBox(height: 0.6.h,),
                                                Text(
                                                  'Why Volcano Explodes ?',
                                                  style: TextStyle(
                                                      color: Color(0xff4AB866),
                                                      fontSize: 14.sp,
                                                    fontFamily: 'AlfaSlabOne',
                                                  ),
                                                ),
                                                SizedBox(height: 0.4.h,),
                                                Text(
                                                  'Like your research',
                                                  style: TextStyle(
                                                    color: Colors.black.withAlpha(170),
                                                    fontSize: 12.sp,

                                                  ),
                                                ),

                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(right: 2.w),
                                        child: SvgPicture.asset('assets/svgs/liked.svg',height: 2.h,),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Divider(
                                  thickness: 1,
                                  //color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),),),
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
