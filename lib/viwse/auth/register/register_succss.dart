import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:get/get.dart';

import '../../../routes.dart';

class RegisterSuccess extends StatefulWidget {
  const RegisterSuccess({Key? key}) : super(key: key);

  @override
  State<RegisterSuccess> createState() => _RegisterSuccessState();
}

class _RegisterSuccessState extends State<RegisterSuccess> {
  @override
  void initState() {
   Timer(Duration(seconds: 2), () {Get.toNamed(homeScreen); });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Center(child: ImageIcon(AssetImage("assets/icon/checkmark.png"),size: 70,)),
            SizedBox(height: 30.h,),
            Center(child: Text("Well-Done!",style: CustomTextStyle.boldText(25.sp),)),
          ],
        ),
      ),
    );
  }
}
