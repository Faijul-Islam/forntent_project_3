import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_chalenge_8/details.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_chalenge_8/tab_bar.dart';

class UiEight extends StatelessWidget {
  const UiEight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "For you",
                      style: CustomTextStyle.boldText(20.sp),
                    ),
                    Card(
                      elevation: 3,
                      child: Container(
                        height: 30.h,
                        width: 30.w,
                        color: Colors.white,
                        child: const Icon(
                          Icons.home,
                          color: Colors.black,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                   margin: const EdgeInsets.all(10),
                    height: 200.h,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtrSGx3sk4uHz0totJgrHpf1SOxOwfH36v-Q&usqp=CAU",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -40,
                    child: Card(
                      shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8)) ) ,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 280.w,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("FEATURED",style: CustomTextStyle.regularText(14.sp),),
                              Text("Hath yoga Beginner",style: CustomTextStyle.regularText(20.sp),),
                              Text("A will sauted class for your goals",style: CustomTextStyle.regularText(14.sp),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50.h,),
              Expanded(child: Center(child: TabBarScreen())),
            ],
          ),
        ),
      ),
    );
  }
}
