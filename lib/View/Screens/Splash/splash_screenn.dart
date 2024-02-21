import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Authentication/Login/login_screen.dart';
import '../Bottom Sheet/bottom_sheet.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: 30.h,
          width: 90.w,
          child: Center(
            child: Image(image: AssetImage('assets/asset/splashimage.png'),),
          ),
        ),
      ),
    );
  }
}
