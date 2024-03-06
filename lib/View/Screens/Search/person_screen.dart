import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Padding(
          padding:  EdgeInsets.symmetric(vertical: 0.5.h),
          child: Container(
          //height: 6.h,
          //width: 95.w,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // height: 6.h,
                  // width: 80.w,
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
                          SizedBox(height:0.2.h,),
                          Text(
                            'Chineze_afamefuna',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height:0.5.h,),
                          Text(
                            'United State',
                            style: TextStyle(
                              color: Colors.green.withAlpha(150),
                              fontSize: 12.sp,

                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                Icon(Icons.close,color: Colors.black87.withAlpha(150),size: 4.5.w),
              ],
            ),
          ),
      ),
        ),),
    );
  }
}
