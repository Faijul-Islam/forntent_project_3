import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/details.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const Details()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              height: 260.h,
                              width: 190.w,
                              decoration: BoxDecoration(
                                  color: Colors.green[700],
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                children: [
                                  Text(
                                    "data",
                                    style: CustomTextStyle.mediumText(25,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$05",
                                    style: CustomTextStyle.mediumText(25,
                                        color: Colors.white),
                                  ),
                                  Container(
                                    width: 140.w,
                                    height: 140.h,
                                    child:Image.asset("assets/images/mango.png"),
                                    // Image.network(
                                    //   "https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png",
                                    //   fit: BoxFit.cover,
                                    // ),
                                  ),
                                  Text(
                                    "Mango",
                                    style: CustomTextStyle.mediumText(25,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: -15,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.r))),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25.r,
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.black,
                                  ),
                                ),
                              ))
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.bottomCenter,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const Details()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(10),
                              height: 260.h,
                              width: 190.w,
                              decoration: BoxDecoration(
                                  color: Colors.green[700],
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                children: [
                                  Text(
                                    "data",
                                    style: CustomTextStyle.mediumText(25,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$05",
                                    style: CustomTextStyle.mediumText(25,
                                        color: Colors.white),
                                  ),
                                  Container(
                                    width: 140.w,
                                    height: 140.h,
                                    child: Image.network(
                                      "https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    "Mango",
                                    style: CustomTextStyle.mediumText(25,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: -15,
                              child: Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.r))),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 25.r,
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.black,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Description",
                style: CustomTextStyle.semiBoldText(20.sp),
              ),
              SizedBox(height: 10,),
              Text(
                "Here, all the items are fresh.We always deliver fresh products.You can also see the condition of the products before purching.",
                style: CustomTextStyle.regularText(16.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
