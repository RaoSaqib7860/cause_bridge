import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../Custom Widget/click_button.dart';
import '../../../Custom Widget/text_field.dart';
import '../../Choose Interest/choose_interset_screen.dart';
import '../SignUp/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int index = 1;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_checkButtonStatus);
    _passwordController.addListener(_checkButtonStatus);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _checkButtonStatus() {
    setState(() {
      _isButtonEnabled = _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 35.h,
                width: 100.w,
                color: Colors.blueGrey,
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 6.5.h),
                      width: 100.w,
                      child: Image(
                        image: AssetImage(
                          'assets/asset/login_back.png',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                        right: 10.w,
                        top: 9.h,
                        child: Image(
                          image: AssetImage('assets/asset/person.png'),
                          height: 15.h,
                        )),
                    Positioned(
                        bottom: 0,
                        child: Container(
                          height: 13.h,
                          width: 100.w,
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      index = 1;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: index == 1
                                                ? AssetImage(
                                                    'assets/asset/leftgreen.png',
                                                  )
                                                : AssetImage(
                                                    'assets/asset/leftwhite.png'))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Text(
                                            'Log in',
                                            style: TextStyle(
                                                color: index == 1
                                                    ? Colors.white
                                                    : Colors.green,
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      index = 2;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: index == 2
                                                ? AssetImage(
                                                    'assets/asset/rightgreen.png')
                                                : AssetImage(
                                                    'assets/asset/rightwhite.png'))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 6.h,
                                          ),
                                          Text(
                                            'Sign Up',
                                            style: TextStyle(
                                                color: index == 2
                                                    ? Colors.white
                                                    : Colors.green,
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Image(
                image: AssetImage('assets/asset/logoo.png'),
                width: 75.w,
                height: 10.5.h,
              ),
              SizedBox(
                height: 3.h,
              ),
              index == 1
                  ? Column(
                      children: [
                        CustomTextFields(
                          //controller: emailController,
                          labelText: 'Email',
                          controller: _emailController,
                          //validator: validate_email_phone,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomTextFields(
                          //controller: emailController,
                          labelText: 'Password',
                          visible: true,
                          controller: _passwordController,
                          //validator: validate_email_phone,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChooseInterestScreen(),
                                ));
                          },
                          child: Container(
                            height: 6.5.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                color: _isButtonEnabled
                                    ? Colors.green
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    width: 1.7,
                                    color: _isButtonEnabled
                                        ? Colors.transparent
                                        : Colors.green)),
                            child: Center(
                              child: Text('Log in',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'AlfaSlabOne',
                                      color: _isButtonEnabled
                                          ? Colors.white
                                          : Color(0xff4AB866),
                                      fontSize: 13)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text.rich(
                          TextSpan(
                            style: const TextStyle(
                              //fontFamily: AppFonts.segoeui,
                              fontSize: 12,
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                  text: 'Don\'t have an Account ?   ',
                                  style: TextStyle(
                                    color: Theme.of(context).brightness ==
                                            Brightness.light
                                        ? Colors.black
                                        : Colors.white,
                                  )),
                              TextSpan(
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //       builder: (context) =>
                                        //           SignUpScreen()),
                                        // )
                                    setState(() {
                                      index = 2;
                                    });
                                      },
                                text: 'Sign up',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14
                                    //fontFamily: AppFonts.segoeui,
                                    ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: const Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                height: 2,
                                thickness: 1,
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Or'),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Divider(
                                height: 2,
                                thickness: 1,
                              ))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 6.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              child: Center(
                                child: Image(
                                  image: AssetImage(
                                      'assets/asset/google_logo.png'),
                                  height: 4.h,
                                ),
                              ),
                            ),
                            Container(
                              height: 6.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.green, width: 1)),
                              child: Center(
                                child: Image(
                                  image:
                                      AssetImage('assets/asset/apple_logo.png'),
                                  height: 4.h,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  : SignUpScreen()
            ],
          ),
        ),
      ),
    );
  }
}
