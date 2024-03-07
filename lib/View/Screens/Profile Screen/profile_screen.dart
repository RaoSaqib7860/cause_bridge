import 'package:cause_bridge/View/Screens/Profile%20Screen/profile_detail_screen.dart';
import 'package:dateofbirth/dateofbirth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController numberController = TextEditingController();
TextEditingController dateController = TextEditingController();
TextEditingController monthController = TextEditingController();
TextEditingController yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('assets/svgs/arrowbutton.svg',width: 8.w,)),
                  //SizedBox(width: 30.w,),
                  Text(
                    'Profile',
                    style: TextStyle(
                        color: Color(0xff4AB866),
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 3.h,),
                      SvgPicture.asset('assets/svgs/camm.svg',width: 8.w,),
                      Text(
                        'Upload your\n  Profile pic',
                        style: TextStyle(
                            color: Color(0xffB4B4B4),
                            fontSize: 9.sp,

                        ),
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileTextField(text: 'Name', hintText: 'Name',controller: nameController),
                    ProfileTextField(text: 'Email', hintText: 'Email',controller: emailController),
                    CustomDropDown(text: 'Country',hintText: 'Select Option'),
                    ProfileTextField(text: 'Number',hintText: 'Number',controller: numberController),
                    Text(
                      'Date of Birth',
                      style: TextStyle(
                        color: Color(0xff4AB866),
                        fontSize: 13.sp,
                      ),
                    ),
                    SizedBox(height: 0.5.h,),
                    Container(
                      height: 6.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1,spreadRadius: 0.5),
                            BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1,spreadRadius: 0.5)
                          ]
                      ),
                      child: Center(
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 15.w,
                                child: TextField(
                                  controller: dateController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Date',
                                      hintStyle: TextStyle(
                                        color: Color(0xffB4B4B4),
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                width: 0.5.w,
                                height: 2.h,
                                color: Color(0xffB4B4B4),
                              ),
                              Container(
                                width: 15.w,
                                child: TextField(
                                  controller: monthController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Month',
                                      hintStyle: TextStyle(
                                        color: Color(0xffB4B4B4),
                                      )
                                  ),
                                ),
                              ),
                              Container(
                                width: 0.5.w,
                                height: 2.h,
                                color: Color(0xffB4B4B4),
                              ),
                              Container(
                                width: 15.w,
                                child: TextField(
                                  controller: yearController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Year',
                                      hintStyle: TextStyle(
                                        color: Color(0xffB4B4B4),
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    CustomDropDown(text: 'Gender',hintText: 'Select Option'),
                    CustomDropDown(text: 'Education',hintText: 'School'),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 8.h,
                              //width: 33.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1,spreadRadius: 0.5),
                                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1,spreadRadius: 0.5)
                                  ]
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/svgs/plusicon.svg',height: 4.5.h,color: Colors.green,),
                                    SizedBox(width: 3.w,),
                                    Text(
                                      'Upload\nCertificate',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11.sp
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 3.w,),
                          Expanded(
                            child: Container(
                              height: 8.h,
                              //width: 33.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1,spreadRadius: 0.5),
                                    BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1,spreadRadius: 0.5)
                                  ]
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/svgs/plusicon.svg',height: 4.5.h,color: Colors.green,),
                                    SizedBox(width: 3.w,),
                                    Text(
                                      'Upload\nCertificate',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11.sp
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h,)
                    // Text(
                    //   'Name',
                    //   style: TextStyle(
                    //     color: Color(0xff4AB866),
                    //     fontSize: 13.sp,
                    //   ),
                    // ),
                    // SizedBox(height: 0.5.h,),
                    // Container(
                    //   height: 6.h,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(30),
                    //     boxShadow: [
                    //       BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1,spreadRadius: 0.5),
                    //       BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1,spreadRadius: 0.5)
                    //     ]
                    //   ),
                    //   child: TextField(
                    //     style: TextStyle(
                    //       color: Color(0xffB4B4B4),
                    //     ),
                    //     decoration: InputDecoration(
                    //       border: InputBorder.none,
                    //       hintText: 'Name',
                    //       hintStyle: TextStyle(
                    //         color: Color(0xffB4B4B4),
                    //         fontSize: 14.sp
                    //       ),
                    //       contentPadding: EdgeInsets.symmetric(horizontal: 5.w)
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget ProfileTextField({
    String? text,
    String? hintText,
    TextEditingController? controller
}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: TextStyle(
            color: Color(0xff4AB866),
            fontSize: 13.sp,
          ),
        ),
        SizedBox(height: 0.5.h,),
        Container(
          height: 6.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1,spreadRadius: 0.5),
                BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1,spreadRadius: 0.5)
              ]
          ),
          child: TextFormField(
            controller: controller,
            style: TextStyle(
              color: Color(0xffB4B4B4),
                fontSize: 15.sp
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                    color: Color(0xffB4B4B4),
                    fontSize: 14.sp
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
            ),
          ),
        ),
        SizedBox(height: 1.h,)
      ],
    );
  }

  Widget CustomDropDown({
    String? text,
    String? hintText,
}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text!,
          style: TextStyle(
            color: Color(0xff4AB866),
            fontSize: 13.sp,
          ),
        ),
        SizedBox(height: 0.5.h,),
        GestureDetector(
          onTap: () {

          },
          child: Container(
            height: 6.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(-1, -1),blurRadius: 1,spreadRadius: 0.5),
                  BoxShadow(color: Colors.grey.withAlpha(50),offset: Offset(1, 1),blurRadius: 1,spreadRadius: 0.5)
                ]
            ),
            child: Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hintText!,
                      style: TextStyle(
                          color: Color(0xffB4B4B4),
                          fontSize: 14.sp
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xffB4B4B4),),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 1.h,),
      ],
    );
  }

}
