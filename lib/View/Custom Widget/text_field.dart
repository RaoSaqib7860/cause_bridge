import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CustomTextFields extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? visible;
  final TextInputType? keyboredType;
  final bool? enable;
  final bool? readOnly;
  final String? Function(String?)? validator;
  final int? max_length;
  final double? padding;
  final Function(String)? onchaged;
  const CustomTextFields(
      {Key? key,
        this.hintText,
        this.controller,
        this.labelText,
        this.suffixIcon,
        this.readOnly = false,
        this.visible = false,
        this.prefixIcon,
        this.keyboredType = TextInputType.text,
        this.enable = true,
        this.onchaged = null,
        this.validator = null,
        this.max_length,
        this.padding = 20})
      : super(key: key);

  @override
  _CustomTextFieldsState createState() => _CustomTextFieldsState();
}

class _CustomTextFieldsState extends State<CustomTextFields> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding!),
      child: Container(
        height: 6.5.h,
        width: 80.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.green,width: 2
          )
        ),
        child: TextFormField(
          controller: widget.controller,
          cursorColor: Colors.black,
          keyboardType: widget.keyboredType,
          obscureText: widget.visible!,
          readOnly: widget.readOnly!,
          enabled: widget.enable,
          maxLength: widget.max_length,
          onChanged: widget.onchaged,
          validator: widget.validator == null ? null : widget.validator,
          decoration: InputDecoration(
              border: InputBorder.none,
              // focusedBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(width: 0.7, color: Colors.black26),
              // ),
              // errorBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(width: 0.7, color: Colors.red),
              // ),
              // disabledBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(width: 0.7, color: Colors.black26),
              // ),
              // enabledBorder: UnderlineInputBorder(
              //   borderSide: BorderSide(width: 0.7, color: Colors.black26),
              // ),
              contentPadding:
              EdgeInsets.only(left: 14, bottom: 11, top: 11, right: 5),
              labelText: widget.labelText,
              hintText: widget.hintText,
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon,
              labelStyle: TextStyle(
                //fontFamily: AppFonts.segoeui,
                fontSize: 13,
                  color: Colors.green
              ),
              hintStyle: TextStyle(
                color: Colors.green,
                fontSize: 13,
              )),
        ),
      ),
    );
  }
}
