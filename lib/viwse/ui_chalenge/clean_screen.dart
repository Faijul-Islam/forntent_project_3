import 'package:flutter/material.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui3.dart';

class CleanScreen extends StatelessWidget {
  const CleanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(20, 67, 62, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 200,
                  child: Image.asset("assets/images/cleaner.png"),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
               const Text(
                "Provide You",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color:Color(0xffffffff),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
               Text(
                "Best Cleaning",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color:Color(0xffffffff),
                  shadows:[
                    Shadow(
                      offset: Offset(0.00,3.00),
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
               const Text(
                "Service",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color:Color(0xffffffff),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                child:  Container(
                  height: 40.00,
                  width: 154.00,
                  decoration: BoxDecoration(
                    color: Color(0xffff9b04),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(10.00),
                  ),
                  child: const Center(
                    child:  Text(
                      "Go",
                      style: TextStyle(
                        fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                        fontSize: 33,
                        color:Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                onTap:(){
                } ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
