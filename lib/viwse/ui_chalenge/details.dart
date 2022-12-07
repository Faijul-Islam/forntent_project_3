import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Stack(
            clipBehavior: Clip.none,
            children: [

              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.green[700],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r))),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back),
                          CircleAvatar(
                            radius: 20.r,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Mango",
                        style: CustomTextStyle.mediumText(30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "From",
                        style: CustomTextStyle.mediumText(20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$10",
                        style: CustomTextStyle.mediumText(20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Size",
                        style: CustomTextStyle.mediumText(20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Medium",
                        style: CustomTextStyle.mediumText(30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25.r,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: -100,
                  right: 0,
                  child: Image.network(
                    "https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png",
                    height: 250.h,
                  )),
            ],
          ),
          SizedBox(
            height: 120,
          ),

          Container(
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "product description",
                    style: CustomTextStyle.mediumText(20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mangoes are sweet, creamy fruits that have a range of possible health benefits."
                    "Mangoes are sweet, creamy fruits that have a range of possible health benefits."
                        "Mangoes are sweet, creamy fruits that have a range of possible health benefits.",
                    style: CustomTextStyle.mediumText(16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Details", style: CustomTextStyle.mediumText(22),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Weight: 1 kg", style: CustomTextStyle.mediumText(16),),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
