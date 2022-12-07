import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class SplasScreen extends StatefulWidget {
  const SplasScreen({Key? key}) : super(key: key);

  @override
  State<SplasScreen> createState() => _SplasScreenState();
}

class _SplasScreenState extends State<SplasScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2),()=>Get.toNamed(chooseLanguage));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/forntent.PNG"),
      ),
    );
  }
}
