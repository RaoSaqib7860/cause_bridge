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
    return SizedBox(
      width: 80.w,
      height: 6.5.h,
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
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green, width: 1.7),
              borderRadius: BorderRadius.circular(8.0),
            ),
            //contentPadding: EdgeInsets.only(left: 10, right: 5),
            labelText: widget.labelText,
            hintText: widget.hintText,
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            labelStyle: TextStyle(fontSize: 12.sp, color: Colors.green),
            hintStyle: TextStyle(
              color: Colors.green,
              fontSize: 13.sp,
            )),
      ),
    );
  }
}
