import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/vvvvvvv.dart';

class UiFive extends StatelessWidget {
  const UiFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 5),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 55.h,
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Top item",
                      style: CustomTextStyle.regularText(25.sp),
                    ),
                  ),
                ],
              ),
            ),
            leading: Icon(
              Icons.menu,
              color: Colors.blue,
            ),
            actions: [
              Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              SizedBox(
                width: 30.w,
              ),
            ],
            bottom: TabBar(
              labelColor: Colors.black,
              labelStyle: CustomTextStyle.mediumText(20.sp),
              unselectedLabelStyle: CustomTextStyle.mediumText(15.sp),
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(text: "Top"),
                Tab(text: "fruits"),
                Tab(text: "fruits"),
                Tab(text: "fruits"),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            children: [
              const One(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
