import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/custom_container.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/custom_container_two.dart';

class Synthesis extends StatelessWidget {
  const Synthesis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:  [
          CustomContainerTow(
              name: "crassulaovata",
              price: "\$40.99",
              url: "assets/images/crassulaovata.png"
          ),
          SizedBox(width: 10.w,),
          CustomContainerTow(
              name: "alphaplant",
              price: "\$50.99",
              url: "assets/images/alphaplant.png"
          ),
          SizedBox(width: 10.w,),
          CustomContainerTow(
              name: "crassulaovata",
              price: "\$40.99",
              url: "assets/images/crassulaovata.png"
          ),
          SizedBox(width: 10.w,),
          CustomContainerTow(
              name: "Alphaplant",
              price: "\$50.99",
              url: "assets/images/alphaplant.png"
          ),
        ],
      ),
    );
  }
}
