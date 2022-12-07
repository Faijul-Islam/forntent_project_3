import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_five.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/vvvvvvv.dart';
import 'package:get/get.dart';

import 'clean_screen.dart';

//ui chalenge 3/5/8/10/
class UiThre extends StatelessWidget {
  UiThre({Key? key}) : super(key: key);
  List catagoris = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
  ];
  RxInt curentindex = 0.obs;
  RxString textChenge = "gghhgfg".obs;
  final RxBool _changeText = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        actions: const [Icon(Icons.notifications), SizedBox(width: 12)],
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  _changeText.value == true;
                },
                child: Container(
                  child: Text(
                    _changeText.value == false ? "data" : "fvdfvfnujuyj",
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Center(
                child: CircleAvatar(
                  radius: 60.r,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "assets/images/download.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                  child: Text(
                "Afran Nisu",
                style: CustomTextStyle.mediumText(30.sp),
              )),
              Center(
                  child: Text(
                "@ afran",
                style: CustomTextStyle.mediumText(18.sp),
              )),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  customColumn(),
                  customColumn(),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 250.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.r),
                        topLeft: Radius.circular(30.r))),
                child: Column(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Day",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: catagoris.length,
                              itemBuilder: (context, index) {
                                return Obx(() => GestureDetector(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>CleanScreen()));
                                        curentindex.value = index;
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 23, vertical: 5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 3.0,
                                            color: Colors.blueGrey,
                                          ),
                                          color: curentindex.value == index
                                              ? Color(0xff707070)
                                              : Colors.redAccent,
                                          borderRadius:
                                              BorderRadius.circular(30.00),
                                        ),
                                        child: Center(
                                          child: Text(
                                            catagoris[index].toString(),
                                            style: CustomTextStyle.mediumText(
                                                20.sp,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ));
                              }),
                        ),
                      ],
                    )),
                    Container(
                      height: 150.h,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.r),
                              topLeft: Radius.circular(30.r))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              "Time",
                              style: TextStyle(
                                fontFamily: "Segoe UI",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 31.00,
                                width: 62.00,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.00,
                                    color: Color(0xffffffff),
                                  ),
                                  borderRadius: BorderRadius.circular(30.00),
                                ),
                                child: const Center(
                                  child: Text(
                                    "10:00",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 31.00,
                                width: 62.00,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1.00,
                                    color: Color(0xffffffff),
                                  ),
                                  borderRadius: BorderRadius.circular(30.00),
                                ),
                                child: const Center(
                                  child: Text(
                                    "12:00",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customColumn() {
    RxInt increment = 0.obs;
    return Column(
      children: [
        Text(
          "Bedroom",
          style: CustomTextStyle.mediumText(25.sp),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.all(5.0),
          //width: 125.w,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.blue,
                Colors.orange,
              ],
              begin: Alignment.center,
              end: Alignment(0.1, 1.2),
              tileMode: TileMode.repeated,
            ),
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                offset: Offset(0.00, 3.00),
                color: Color(0xff000000).withOpacity(0.16),
                blurRadius: 6,
              ),
            ],
            borderRadius: BorderRadius.circular(20.00),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    increment--;
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 29,
                  )),
              Obx(
                () => Text(
                  increment.value.toString(),
                  style: CustomTextStyle.boldText(29.sp),
                ),
              ),
              IconButton(
                  onPressed: () {
                    increment++;
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 32,
                  )),
            ],
          ),
        )
      ],
    );
  }
}
