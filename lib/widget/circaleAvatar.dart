import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCircleAvatar extends StatelessWidget {
  CustomCircleAvatar({Key? key, required this.onPressed, required this.icon})
      : super(key: key);
  VoidCallback onPressed;
  Widget icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: onPressed,
        icon:icon,
      ),
    );
  }
}
