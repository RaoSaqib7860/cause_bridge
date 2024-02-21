import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class CustomButton extends StatefulWidget {
  final double? height;
  final double? width;
  final double? padding;
  final Widget? child;
  final String? text;

  const CustomButton(
      {Key? key, this.height, this.width, this.padding, this.child, this.text})
      : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.5.h,
      width: 80.w,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text('${widget.text}',
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16)),
      ),
    );
  }
}
