import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/widget/circaleAvatar.dart';
import 'package:forntent_project_3/widget/custom_button.dart';
import 'package:get/get.dart';

import '../../routes.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/forntent.PNG"),
            ),
            SizedBox(
              height: 26.h,
            ),
            Text(
              "Let’s Get Started.",
              style: CustomTextStyle.semiBoldText(18.sp),
            ),
            Text(
                "If you continue, you are accepting Our Terms & Conditions andPrivacy Policy.",
                style: CustomTextStyle.regularText(15.sp)),
            Text(
              "Privacy Policy",
            ),
            SizedBox(
              height: 26.h,
            ),
            CustomButton(
                onPressed: () {
                  Get.toNamed(registerScreen);
                },
                text: "Register"),
            SizedBox(
              height: 26.h,
            ),
            CustomButton(
                onPressed: () {
                  Get.toNamed(loginScreen);
                },
                text: "Login"),
            SizedBox(
              height: 26.h,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OR Continue With"),
                  SizedBox(
                    height: 26.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCircleAvatar(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.google),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomCircleAvatar(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.facebook),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CustomCircleAvatar(
                        onPressed: () {},
                        icon: FaIcon(FontAwesomeIcons.twitter),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 52.h,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 18.r,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_right,
                              size: 25,
                            )),
                      ),
                      Text("Need Help ?")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
