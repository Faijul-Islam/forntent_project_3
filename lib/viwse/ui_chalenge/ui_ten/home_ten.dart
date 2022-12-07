import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/secend_tabe.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/tabe_first.dart';

class HomeTen extends StatelessWidget {
  const HomeTen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        title: Text(
          "Sam's Garden",
          style: CustomTextStyle.boldText(
            20.sp,
            color: Colors.grey,
          ),
        ),
        actions:  [
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
          SizedBox(width: 12.w,)
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 35.h,
                decoration: BoxDecoration(
                    color: const Color(0xffedf7fb),
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                child: const TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Searches your plan",
                    suffixIcon: Icon(Icons.keyboard_voice),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Expanded(child: const TabeFirst()),
              SizedBox(height: 20.h,),
              Expanded(child: const SecondTab()),
            ],
          ),
        ),
      ),
    );
  }
}
