import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../const/text_stayle.dart';
import 'myad/may_add.dart';

class MyAdsScreen extends StatelessWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height / 6),
          child: AppBar(
            title: const Text("My Ads"),
            elevation: 0,
            bottom: TabBar(
              indicatorColor: Colors.grey,
              labelColor: Colors.black,
              labelStyle: CustomTextStyle.mediumText(20.sp),
              unselectedLabelStyle: CustomTextStyle.mediumText(15.sp),
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(icon: FaIcon(FontAwesomeIcons.bagShopping), text: "My Ads"),
                Tab(
                    icon: FaIcon(FontAwesomeIcons.heart),
                    text: "My Favourites"),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: TabBarView(
            dragStartBehavior: DragStartBehavior.down,
            children: [
              MyAdd(),
              Container(
                child: const Center(child: Text("Favourites")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
