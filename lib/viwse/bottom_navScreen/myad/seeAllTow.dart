import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:get/get.dart';

import '../../../routes.dart';

class SeeAllTow extends StatelessWidget {
  const SeeAllTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sell", style: CustomTextStyle.mediumText(22.sp)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 33.w, right: 33.w, top: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose a Sub Category",style: CustomTextStyle.regularText(20.sp)),
            container("Cars", () {Get.toNamed(seeAllThree);}),
            container(" Bikes", () {Get.toNamed(seeAllThree);}),
            container("Bicycles", () {Get.toNamed(seeAllThree);}),
          ],
        ),
      ),
    );
  }
}

Widget container(title, onTap) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      height: 48.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3.r)),
      child: ListTile(
        onTap: onTap,
        shape: RoundedRectangleBorder(),
        title: Text(title,style: CustomTextStyle.mediumText(16.sp)),
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 15.r,
        ),
      ),
    ),
  );
}
