import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../routes.dart';

class Chooselanguage extends StatelessWidget {
   Chooselanguage({Key? key}) : super(key: key);
var _gender="".obs;
changegender(var gender){
  _gender.value = gender;
}
int selectedvalue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 324.w,
                height: 291.h,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20.r)
                ),
                child:Obx(() => Column(
                  children: [
                    SizedBox(height: 50.h,),
                    Text("Choose Your language",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w600),),
                    RadioListTile(
                      title: Text("Male"),
                      value: "male",
                      groupValue: _gender.value,
                      onChanged: (value){
                        changegender(value);
                        Get.toNamed(onbordingScreen);
                      },
                    ),

                    RadioListTile(
                      title: Text("Female"),
                      value: "female",
                      groupValue: _gender.value,
                      onChanged: (value){
                        changegender(value);
                        Get.toNamed(onbordingScreen);
                      },
                    ),

                    RadioListTile(
                      title: Text("Other"),
                      value: "other",
                      groupValue: _gender.value,
                      onChanged: (value){
                        changegender(value);
                        Get.toNamed(onbordingScreen);
                      },
                    ),
                  ],
                ),
                ),
              ),
              Positioned(
                top: -80,
                left: 145.w,
                child: Center(
                  child: ClipRRect(
                    child: CircleAvatar(
                      radius: 60.r,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child:  CircleAvatar(
                          radius: 50.r,
                          backgroundColor: Colors.black,
                          backgroundImage:AssetImage("assets/forntent.PNG"),
                        ),
                      ),
                    )
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
