import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:get/get.dart';

import '../../routes.dart';
import 'dashBord_screen.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 1,
        title: Text("Gazipur,  Dhaka"),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.location_on)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.circleQuestion),
          )
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 12.h,left: 28.w,bottom: 23.h),
        child: ListView(
          children: [
            SizedBox(height: 12.h,),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Products",
                      helperStyle: CustomTextStyle.regularText(15),
                      suffixIcon: Icon(Icons.search,color: Colors.black,),
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    customContainer("Cars, Bikes, Bicycles", () {Get.toNamed(seeAllScreen);}),
                    customContainer("Electronics & Appliances", () {Get.toNamed(seeAllTow);}),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            Container(
              height: 600.h,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      mainAxisSpacing: 34.w,
                      crossAxisSpacing: 40.h,
                    ),
                    itemBuilder: (_,index){
                      return Container(
                        height:200.h ,
                        width: 220.w,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20.r)
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            SizedBox(height: 40.h,),
                            Positioned(
                                top:-40.h,
                                left: 60.w,
                                right: 60.w,
                                child: Image.asset("assets/images/watch.png",height: 190.97.h,width:190.11.w ,)),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:  [
                                    Text(
                                      "Apple Watch",
                                      style: CustomTextStyle.semiBoldText(22.sp),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Series 6. Red",
                                      style: CustomTextStyle.semiBoldText(16.sp)
                                    ),
                                    Text(
                                      "\$  359",
                                      style: CustomTextStyle.boldText(17.sp),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }
                )
            ),
          ],
        ),
      ),
    );
  }
}
