import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/text_stayle.dart';

class SeeAllScreen extends StatelessWidget {
  const SeeAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "Sell",
          style: CustomTextStyle.mediumText(22.sp),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 31.w,right: 33.w,top: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 17.h,),
            Text(
              "Choose a Category",
              style: CustomTextStyle.regularText(20.sp),
            ),
            SizedBox(height: 14.h,),
            container(
              "Cars, Bikes, Bicycles",
            ),
            container(
              "Cars, Bikes, Bicycles",
            ),
            container(
              "Cars, Bikes, Bicycles",
            ),
          ],
        ),
      ),
    );
  }
}

Widget container(
  title,
) {
  return Padding(
    padding:  EdgeInsets.all(3.0.w),
    child: Container(
      height: 58.h,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r)),
      child: Center(
        child: ListTile(
          shape: RoundedRectangleBorder(),
          title: Text(title, style: CustomTextStyle.regularText(16.sp),),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 15.r,
          ),
        ),
      ),
    ),
  );
}
