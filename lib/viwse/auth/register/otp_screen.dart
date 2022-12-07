import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/widget/custom_button.dart';
import 'package:forntent_project_3/widget/custom_textFild.dart';
import 'package:get/get.dart';

import '../../../routes.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 167.h,),
              CircleAvatar(
                radius: 60.r,
                backgroundImage: AssetImage("assets/forntent.PNG"),
              ),
              SizedBox(height: 88.h,),
              CustomTextFild(hintText: 'Enter 6 digit OTP code'),
              SizedBox(height: 54.h,),
              CustomButton(onPressed: (){Get.toNamed(registerSuccess);}, text: "Continue"),
            ],
          ),
        ),
      ) ,
    );
  }
}
