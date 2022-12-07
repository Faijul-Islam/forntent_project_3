import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);
  VoidCallback onPressed;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.indigo, borderRadius: BorderRadius.circular(10.r)),
      child: TextButton(
          onPressed: onPressed,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding:  EdgeInsets.only(left: 30.w),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 20.sp,fontWeight: FontWeight.w400),
              ),
            ),
          )),
    );
  }
}
