import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/widget/padding.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
        elevation: 2,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 18.h, left: 31.w, right: 33.w),
        child: Column(
          children: [
            CustomPadding(title: "Edit Profile", onTap: () {}),
            CustomPadding(title: "Language", onTap: () {}),
            CustomPadding(title: "Logout", onTap: () {}),
            CustomPadding(title: "Deactivate Account", onTap: () {}),
          ],
        ),
      ),
    );
  }
}
