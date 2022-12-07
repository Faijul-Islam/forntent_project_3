import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAdd extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 40,
          crossAxisSpacing: 3,
        ),
        itemCount: 4,
        itemBuilder: (_,index){
          return Card(
            elevation: 5,
            child: Container(
              height:217.1.h ,
              width: 170.34.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r)
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(height: 10.h,),
                  Positioned(
                      top:-40,
                      left: 30,
                      child: Image.asset("assets/images/img_1.png",height: 130.97.h,width:147.11.w ,)),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Apple Watch",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Series 6. Red",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF868686)),
                          ),
                          Text(
                            "\$  359",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF5956E9)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
