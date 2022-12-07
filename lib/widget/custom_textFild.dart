import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFild extends StatelessWidget {
   CustomTextFild({Key? key,required this.hintText,this.suffixIcon,this.prefixIcon}) : super(key: key);
String hintText;
Widget? suffixIcon,prefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon:suffixIcon ,
        prefixIcon:prefixIcon ,
        hintStyle: TextStyle(fontSize: 18.sp),
      ),
    );
  }
}
