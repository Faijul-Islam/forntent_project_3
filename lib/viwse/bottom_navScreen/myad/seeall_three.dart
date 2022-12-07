import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/widget/custom_button.dart';
import 'package:forntent_project_3/widget/custom_textFild.dart';
import 'package:get/get.dart';

import '../../../routes.dart';

class SeeAllThree extends StatelessWidget {
  const SeeAllThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Product Details",
          style: CustomTextStyle.mediumText(22.sp),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 29.w,right: 36.w,),
        child: ListView(
          children: [
            SizedBox(height: 31.h,),
            Text(
              "Complete All the fields with valid information",
              style: CustomTextStyle.regularText(20.sp),
            ),
            SizedBox(height: 28.h,),
            CustomTextFild(hintText: "Product Title"),
            SizedBox(height: 17.h,),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Product description"
              ),
            ),
            SizedBox(height: 17.h,),
            CustomTextFild(hintText: "Price"),
            SizedBox(height: 17.h,),
            CustomTextFild(hintText: "Where you advertise this item ?",
            suffixIcon: IconButton(onPressed: (){},icon: const Icon(Icons.arrow_drop_down,)),
            ),
            SizedBox(height: 17.h,),
            CustomTextFild(hintText: "Location"),
            SizedBox(height:116.h,),
            CustomButton(onPressed: (){Get.toNamed(mySellScreen);}, text: "Continue"),
          ],
        ),
      ),
    );
  }
}
