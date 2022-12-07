import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/app_string.dart';
import 'package:get/get.dart';

import '../const/text_stayle.dart';
import '../routes.dart';

class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({Key? key}) : super(key: key);
  RxInt _curentindex = 0.obs;
  List<String> lotifile = [
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/tree.png",
        "assets/images/mango.png"
  ];
  List<String> title = [
    AppString.welcomeToPeerVendor,
    AppString.findYourFavouriteProducts,
    AppString.buySellAroundYou,
    AppString.safeTrusted,
  ];
  List<String> description = [
    AppString.description,
    AppString.description,
    AppString.description,
    AppString.description,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
            () => Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Image.asset(lotifile[_curentindex.toInt()])),
                DotsIndicator(
                  dotsCount: lotifile.length,
                  position: _curentindex.toDouble(),
                  decorator: const DotsDecorator(
                    activeColor: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "${title[_curentindex.toInt()]}",
                  style: CustomTextStyle.semiBoldText(20.sp),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "${description[_curentindex.toInt()]}",
                  style: CustomTextStyle.regularText(18.sp),
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20.r)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          "Skip",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20.r)),
                        color: Colors.grey,
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_curentindex == title.length - 1) {
                            Get.toNamed(authentication);
                          } else {
                            _curentindex + 1;
                          }
                        },
                        child: Text("Next"),
                      ),
                    )),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
