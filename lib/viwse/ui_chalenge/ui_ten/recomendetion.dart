import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/custom_container.dart';

class Recomendetion extends StatefulWidget {
  const Recomendetion({Key? key}) : super(key: key);

  @override
  State<Recomendetion> createState() => _RecomendetionState();
}

class _RecomendetionState extends State<Recomendetion> {
  bool ontap=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const CustomContainer(
                name: "Alphaplant",
                price: "\$50.49",
                url:("assets/images/alphaplant.png")
            ),
            SizedBox(width: 10.w,),
            const CustomContainer(
                name: "Crassulaovata",
                price: "\$40.99",
                url:("assets/images/crassulaovata.png")
            ),
            const CustomContainer(
                name: "Crassulaovata",
                price: "\$40.99",
                url:("assets/images/tree.png")
            ),
            SizedBox(width: 10.w,),
            const CustomContainer(
                name: "Crassulaovata",
                price: "\$40.99",
                url:("assets/images/crassulaovata.png")
            ),
          ],
        ),
      )
    );
  }
}
