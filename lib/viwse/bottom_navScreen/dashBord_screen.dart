import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/myad/seeAllTow.dart';
import 'package:forntent_project_3/widget/custom_button.dart';
import 'package:get/get.dart';

import '../../routes.dart';

class DashBordScreen extends StatelessWidget {
  const DashBordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Gazipur,  Dhaka"),
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.location_on)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.circleQuestion),
          )
        ],
      ),
      drawer: customDrawer(),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.w, right: 30.w),
              child: SizedBox(
                height: 48.h,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Products",
                      helperStyle: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w300),
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.h, left: 28.w),
              child: Row(
                children: [
                  customContainer("Cars, Bikes, Bicycles", () {
                    Get.toNamed(seeAllScreen);
                  }),
                  customContainer("Electronics & Appliances", () {
                    Get.toNamed(seeAllTow);
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: 428.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.r)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 36.w, right: 36.w, bottom: 28.h, top: 17.h),
                child: Column(
                  children: [
                    Container(
                      width: 108.w,
                      height: 108.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/Capture.png"))),
                    ),
                    Text(
                      "No Products available in your area.",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    CustomButton(onPressed: () {}, text: "Search in nearby"),
                    SizedBox(
                      height: 6.h,
                    ),
                    CustomButton(
                        onPressed: () {
                          Get.toNamed(productScreen);
                        },
                        text: "Put Up something for Sale"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const ImageIcon(
            AssetImage('assets/icon/headphones.png'),
            size: 20,
            color: Colors.red,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}

Widget customContainer(String productname, onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(left: 10.w),
      height: 39.h,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: Text(
          productname,
          style: CustomTextStyle.mediumText(15.sp),
        ),
      ),
    ),
  );
}

Widget customDrawer() {
  return Drawer(
    child: Padding(
      padding: EdgeInsets.only(left: 10.w, right: 30.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80.h,
          ),
          CircleAvatar(
            radius: 60.r,
            backgroundImage: const AssetImage("assets/forntent.png"),
          ),
          SizedBox(
            height: 40.h,
          ),
          container("Account Metrics", () {}),
          SizedBox(
            height: 10.h,
          ),
          container("Help & Support", () {}),
          SizedBox(
            height: 10.h,
          ),
          container("Contact Us", () {}),
          SizedBox(
            height: 10.h,
          ),
          container("Share App", () {}),
          SizedBox(
            height: 10.h,
          ),
          container("Rate Us", () {}),
          SizedBox(
            height: 10.h,
          ),
          container("FAQ", () {}),
          SizedBox(
            height: 10.h,
          ),
          container("Privacy Policy", () {}),
        ],
      ),
    ),
  );
}
