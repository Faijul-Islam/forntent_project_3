import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:custom_clippers/custom_clippers.dart';

import '../../const/text_stayle.dart';
//Messaging App UI Deign In Flutter - Chat App UI Design Flutter
class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(),
            SizedBox(width: 10.w,),
            Text("data"),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: ClipPath(
              clipper:UpperNipMessageClipper(MessageType.receive) ,
              child: Container(
                padding: EdgeInsets.all(30.w),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 20.r,
                      blurRadius: 10.r,
                      offset: Offset(3, 3),
                      color: Colors.indigo.withOpacity(0.5)
                    )
                  ]
                ),
                child: Text("Hi",style: CustomTextStyle.mediumText(16.sp),),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 30.w),
            child: ClipPath(
              clipper:UpperNipMessageClipper(MessageType.send) ,
              child: Container(
                padding: EdgeInsets.all(30.w),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 20.r,
                          blurRadius: 10.r,
                          offset: Offset(3, 3),
                          color: Colors.indigo.withOpacity(0.5)
                      )
                    ]
                ),
                child: Text("Hi",style: CustomTextStyle.mediumText(16.sp),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
