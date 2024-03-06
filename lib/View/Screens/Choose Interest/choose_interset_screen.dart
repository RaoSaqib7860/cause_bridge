import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Custom Widget/click_button.dart';
import '../Bottom Sheet/bottom_sheet.dart';
import '../Settings/setting_screen.dart';
import 'package:get/get.dart';

class ChooseInterestScreen extends StatefulWidget {
  const ChooseInterestScreen({Key? key}) : super(key: key);

  @override
  State<ChooseInterestScreen> createState() => _ChooseInterestScreenState();
}

class _ChooseInterestScreenState extends State<ChooseInterestScreen> {
  List list_of_interest = [
    'Math & Logic',
    'Business',
    'Personal Development',
    'Computer Science',
    'Data Science',
    'Life Science',
    'Social Science',
  ];

  List list = [];
  String? selected_interest;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Image(
              image: AssetImage('assets/asset/group2.png'),
              width: 70.w,
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              'Choose your Intrest',
              style: TextStyle(
                  color: Color(0xff4AB866),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Text(
              'Choose At least 3 or more',
              style: TextStyle(
                color: Color(0xff6A6A6A),
                fontSize: 14.sp,
                //fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 6.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                    children: list_of_interest.map((e) {
                  return InkWell(
                    child: list.contains(list_of_interest.indexOf(e))
                        ? selected_checkboxContainer(text: '$e')
                        : checkboxContainer(text: '$e'),
                    onTap: () {
                      //selected_interest = e;
                      if(list.contains(list_of_interest.indexOf(e))){
                        list.remove(list_of_interest.indexOf(e));
                      }
                      else{
                        list.add(list_of_interest.indexOf(e));
                      }
                      setState(() {});
                    },
                  );
                }).toList()),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 1.5.h,horizontal: 9.w),
          child: GestureDetector(
            onTap: () {
              if (list.length > 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomSheetScreen(),
                    ));
              }
              else{
                //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('At least 3 or more')));
                Get.snackbar('Alert !', 'Choose At least 3 or more');
              }
            },
            child: Container(
              height: 6.7.h,
              width: 82.w,
              decoration: BoxDecoration(
                color: Color(0xff4AB866),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500
                    //fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget checkboxContainer({String? text}) {
    return Column(
      children: [
        Container(
          height: 7.h,
          width: 82.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text!,
                    style: TextStyle(
                        color: Color(0xff4AB866),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SvgPicture.asset(
                    'assets/svgs/checkbox.svg',
                    width: 5.5.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        )
      ],
    );
  }

  Widget selected_checkboxContainer({String? text}) {
    return Column(
      children: [
        Container(
          height: 7.h,
          width: 82.w,
          decoration: BoxDecoration(
            color: Color(0xff4AB866),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text!,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SvgPicture.asset(
                    'assets/svgs/selected_checkbox.svg',
                    width: 5.5.w,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        )
      ],
    );
  }
}
