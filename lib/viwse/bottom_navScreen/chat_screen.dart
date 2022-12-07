import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/widget/custom_textFild.dart';
import 'package:get/get.dart';

import '../../routes.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 52.h,
          left: 43.w,
          right: 53.w,
        ),
        child: Column(
          children: [
            const Center(child: Text("All Users")),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                     // height: 50.h,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search...",
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r))),
                      ),
                    )),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: const Center(child: Icon(Icons.add)),
                ),
              ],
            ),
            SizedBox(height: 20.h,),
            listTile("Bożenka Malina", "Uploaded file.",
                "assets/images/img.png", () {Get.toNamed(chatDetailsScreen);}),
            listTile("Odeusz Piotrowski", "Will do, super, thank you",
                "assets/images/img.png", () {Get.toNamed(chatDetailsScreen);}),
            listTile("Krysia Eurydyka", "Uploaded file.",
                "assets/images/img.png", () {Get.toNamed(chatDetailsScreen);}),
          ],
        ),
      ),
    );
  }
}

Widget listTile(title, subTitle, imageurl, onTap) {
  return ListTile(
    onTap: onTap,
    leading: Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 20.r,
          backgroundImage: AssetImage(imageurl),
        ),
         Positioned(
          top: -8,
          left: -20,
          child: CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.blueGrey,
            child: const Center(
              child: Text("+3"),
            ),
          ),
        ),
      ],
    ),
    title: Text(title),
    subtitle: Text(subTitle),
  );
}
