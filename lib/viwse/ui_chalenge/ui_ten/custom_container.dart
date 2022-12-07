import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {Key? key, required this.name, required this.price, required this.url})
      : super(key: key);
  final String name;
  final String price;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        color: const Color(0xffedf7fb),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25.r,
                child: const Icon(Icons.favorite_border),
              ),
            ),
          ),
          Expanded(
              child: Image.asset(
            url,
            fit: BoxFit.cover,
          )),
          Text(
            name,
            style: const TextStyle(
                fontSize: 17,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            price,
            style: const TextStyle(
                fontSize: 22,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
