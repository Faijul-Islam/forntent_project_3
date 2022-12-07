import 'package:flutter/material.dart';
import 'package:forntent_project_3/const/app_theme.dart';
import 'package:forntent_project_3/const/text_stayle.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui3.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_chalenge_8/ui_eight.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_five.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/home_ten.dart';
import 'package:get/get.dart';

class UiHome extends StatelessWidget {
  UiHome({Key? key}) : super(key: key);
  final RxBool _changetheme = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ui Challenge"),
        actions: [
          Obx(
            () => Switch(
                value: _changetheme.value,
                onChanged: (value) {
                  _changetheme.value = value;
                  Get.changeTheme(_changetheme.value == false
                      ? AppTheme().lightTheme(context)
                      : AppTheme().darkTheme(context));
                }),
          )
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        Get.updateLocale(
                          const Locale("en", "US"),
                        );
                      },
                      child: Text("englihs".tr)),
                  TextButton(
                      onPressed: () {
                        Get.updateLocale(
                          const Locale("bn", "BD"),
                        );
                      },
                      child: Text("bangla".tr)),
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => UiThre()));
                  },
                  child: Text(
                    'ui There'.tr,
                    style: CustomTextStyle.mediumText(30, color: Colors.blue),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const UiFive()));
                  },
                  child: Text(
                    "ui Five".tr,
                    style: CustomTextStyle.mediumText(30, color: Colors.blue),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const UiEight()));
                  },
                  child: Text(
                    ' ui Eight'.tr,
                    style: CustomTextStyle.mediumText(30, color: Colors.blue),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const HomeTen()));
                  },
                  child: Text(
                    "ui Ten".tr,
                    style: CustomTextStyle.mediumText(30, color: Colors.blue),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
