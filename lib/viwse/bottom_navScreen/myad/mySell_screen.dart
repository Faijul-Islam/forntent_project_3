import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/widget/custom_button.dart';
import 'package:get/get.dart';

import '../../../routes.dart';

class MySellScreen extends StatelessWidget {
  const MySellScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Choose Images"),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 29.w, right: 31.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add 1 or more images",
              style: CustomTextStyle.mediumText(20.sp),
            ),
            Text(
              "For best result provide a square picture. Do not reduce the width of the picture in  the cropping tools and do not increase the height of the picture in the croppingtool. Need Help?",
              style: CustomTextStyle.mediumText(13.sp),
            ),
            SizedBox(
              height: 43.h,
            ),
            Card(
              elevation: 3,
              child: Container(
                width: 75.w,
                height: 75.w,
                child: const Center(child: FaIcon(FontAwesomeIcons.circlePlus)),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Container(
              height: 320.h,
              width: double.infinity,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 3,
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 5,
                      child: Container(
                        height: 160.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: const DecorationImage(image: AssetImage( "assets/images/mobile.png"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20.r)),
                        // child: Image.asset(
                        //   "assets/images/mobile.png",
                        // ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 33.h,
            ),
            CustomButton(
                onPressed: () {
                  Get.toNamed(success);
                },
                text: "Continue"),
          ],
        ),
      ),
    );
  }
}

//GridView.builder(
//                   itemCount: 6,
//                   scrollDirection: Axis.vertical,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3,
//
//                     crossAxisSpacing: 8,
//                     mainAxisSpacing: 8,
//                   ),
//                   itemBuilder: (_, index) {
//                     return Container(
//                       width: 120.w,
//                       height: 190.h,
//                       decoration: const BoxDecoration(
//                           color: Colors.black,
//                           image: DecorationImage(
//                               image: AssetImage("assets/images/mango.png"))),
//                     );
//                   }),
