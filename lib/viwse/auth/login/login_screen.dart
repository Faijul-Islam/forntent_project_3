import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/widget/circaleAvatar.dart';
import 'package:forntent_project_3/widget/custom_button.dart';
import 'package:forntent_project_3/widget/custom_textFild.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCircleAvatar(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Create an accountNow.",
              style: CustomTextStyle.mediumText(36.sp),
            ),
            // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
            SizedBox(
              height: 30.h,
            ),
            ToggleSwitch(
              activeBgColor: [Colors.blue],
              initialLabelIndex: 0,
              totalSwitches: 2,
              labels: ['Phone', 'E-mail'],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
            SizedBox(
              height: 30.h,
            ),
            CustomTextFild(hintText: "Full Name"),
            SizedBox(
              height: 30.h,
            ),
            CustomTextFild(hintText: "Phone Number"),
            SizedBox(
              height: 30.h,
            ),
            CustomTextFild(hintText: "Select Your Country"),
            SizedBox(
              height: 66.h,
            ),
            CustomButton(onPressed: () {Get.toNamed(loginOTPScreen);}, text: "Continue"),
            SizedBox(
              height: 37.h,
            ),
            Row(
              children: [
                const Text("Already Have an Account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}