import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 300.h,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzJ0OSnBdAhpsJp_6_F8hko3pS0ERhaVELGA&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: -425,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.r),
                          topLeft: Radius.circular(20.r),
                        ),
                      ),
                      height: 380.h,
                      width: 393,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                             Text(
                              "Hatha Yoga class",
                              style: TextStyle(
                                  fontSize: 30.sp, fontWeight: FontWeight.bold),
                            ),
                             Text(
                              "For Beginners",
                              style: TextStyle(
                                  fontSize: 30.sp, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: <Widget>[
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                          height: 40.h,
                                          width: 40.w,
                                          child: Image.network(
                                              "https://www.freepngimg.com/thumb/yoga/12-2-yoga-png-clipart.png",
                                              fit: BoxFit.fill)),
                                    ),
                                    Positioned(
                                      left: 25,
                                      child: ClipOval(
                                        child: Container(
                                            height: 40.h,
                                            width: 40.w,
                                            child: Image.network(
                                              "https://www.pngitem.com/pimgs/m/230-2308074_yoga-silhouette-lotus-position-clip-art-yoga-poses.png",
                                              fit: BoxFit.fill,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                                 SizedBox(
                                  width: 30.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children:  <Widget>[
                                        Text("Afran Sarkar",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold)),
                                        Text("and"),
                                        Text("Mustafizur Rahman",
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    const Text("Hatha,Meditation,Breathwork"),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                             Text(
                              "Hatha,Meditation,Breathwork with Afran\n Sarkar,Hatha,Meditation,Breathwork with Mustafizur Rahman",
                              style: TextStyle(fontSize: 16.sp),
                              maxLines: 3,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Read more",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Divider(
                              thickness: 3.0,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const <Widget>[
                                    Text(
                                      "24 lessons",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("3 Weeks . 1-2 Level")
                                  ],
                                ),
                                Container(
                                  height: 60,
                                  width: 170,
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                      color: Colors.orange),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      const Text("Start",
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      FloatingActionButton(
                                          backgroundColor: Colors.white,
                                          child: const Icon(
                                            Icons.arrow_right,
                                            color: Colors.black12,
                                            size: 60,
                                          ),
                                          onPressed: () {}),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
