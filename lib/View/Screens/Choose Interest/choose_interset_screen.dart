import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Custom Widget/click_button.dart';
import '../Bottom Sheet/bottom_sheet.dart';
import '../Settings/setting_screen.dart';

class ChooseInterestScreen extends StatefulWidget {
  const ChooseInterestScreen({Key? key}) : super(key: key);

  @override
  State<ChooseInterestScreen> createState() => _ChooseInterestScreenState();
}

class _ChooseInterestScreenState extends State<ChooseInterestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Container(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              Image(image: AssetImage('assets/asset/group2.png'),width: 70.w,),
              SizedBox(height: 2.h,),
              Text(
                'Choose your Intrest',
                style: TextStyle(
                  color: Color(0xff4AB866),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 0.5.h,),
              Text(
                'Choose At least 3 or more',
                style: TextStyle(
                    color: Color(0xff6A6A6A),
                    fontSize: 14.sp,
                    //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 6.h,),
              checkboxContainer(text: 'Math & Logic'),
              checkboxContainer(text: 'Business'),
              checkboxContainer(text: 'Personal Development'),
              checkboxContainer(text: 'Computer Science'),
              checkboxContainer(text: 'Data Science'),
              checkboxContainer(text: 'Life Science'),
              SizedBox(height: 2.h,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BottomSheetScreen(),));
                },
                child: Container(
                  height: 6.7.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    color: Color(0xff4AB866),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.sp,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }

  Widget checkboxContainer({String? text}){
    return Column(
      children: [
        Container(
          height: 7.h,
          width: 85.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text!,
                    style: TextStyle(
                      color: Color(0xff4AB866),
                      fontSize: 17.sp,
                      //fontWeight: FontWeight.bold
                    ),
                  ),
                  SvgPicture.asset('assets/svgs/checkbox.svg',width: 5.5.w,),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 2.h,)
      ],
    );
  }

}
