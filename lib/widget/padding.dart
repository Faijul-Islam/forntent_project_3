import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPadding extends StatelessWidget {
   CustomPadding({Key? key,required this.title,required this.onTap}) : super(key: key);
  String title;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 55.h,
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(3.r)),
        child: GestureDetector(
          onTap:onTap ,
          child: Row(
            children: [
              SizedBox(width: 24.w,),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 18.r,
              ),
              SizedBox(width: 14.w,),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
