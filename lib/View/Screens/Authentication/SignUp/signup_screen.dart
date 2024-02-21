import 'package:cause_bridge/View/Screens/Authentication/Login/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Custom Widget/click_button.dart';
import '../../../Custom Widget/text_field.dart';
import '../../Choose Interest/choose_interset_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _userNameController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_checkButtonStatus);
    _passwordController.addListener(_checkButtonStatus);
    _nameController.addListener(_checkButtonStatus);
    _userNameController.addListener(_checkButtonStatus);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _userNameController.dispose();
    super.dispose();
  }

  void _checkButtonStatus() {
    setState(() {
      _isButtonEnabled = _emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty && _nameController.text.isNotEmpty &&
          _userNameController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomTextFields(
          //controller: emailController,
          hintText: 'Name',
          controller: _nameController,
          //validator: validate_email_phone,
        ),
        SizedBox(height: 2.h,),
         CustomTextFields(
          //controller: emailController,
          hintText: 'User Name',
          controller: _userNameController,
          //validator: validate_email_phone,
        ),
        SizedBox(height: 2.h,),
         CustomTextFields(
          //controller: emailController,
          hintText: 'Email',
          controller: _emailController,
          //validator: validate_email_phone,
        ),
        SizedBox(height: 2.h,),
         CustomTextFields(
          //controller: emailController,
          hintText: 'Password',
          controller: _passwordController,
          //validator: validate_email_phone,
        ),
        SizedBox(height: 2.h,),
        Container(
          height: 6.5.h,
          width: 80.w,
          decoration: BoxDecoration(
              color: _isButtonEnabled ? Colors.green : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: 2, color: _isButtonEnabled ? Colors.transparent : Colors.green)
          ),
          child: Center(
            child: Text('Sign Up',
                style:  TextStyle(
                    fontWeight: FontWeight.w500,
                    color: _isButtonEnabled ? Colors.white : Colors.green,
                    fontSize: 16)),
          ),
        ),
        SizedBox(height: 2.h,),
        Text.rich(
          TextSpan(
            style: const TextStyle(
              //fontFamily: AppFonts.segoeui,
              fontSize: 12,
              color: Color(0xff000000),
            ),
            children: [
              TextSpan(
                  text: 'Already have an Account ?   ',
                  style: TextStyle(
                    color:
                    Theme.of(context).brightness == Brightness.light
                        ? Colors.black
                        : Colors.white,
                  )),
              TextSpan(
                recognizer: new TapGestureRecognizer()..onTap = () =>{
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),)
                },
                text: 'Log In',
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
        SizedBox(height: 2.h,),

      ],
    );
  }
}
