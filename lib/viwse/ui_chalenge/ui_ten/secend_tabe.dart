import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/Synthesis.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/recomendetion.dart';

class SecondTab extends StatelessWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(30),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TabBar(
                    //indicatorPadding: const EdgeInsets.only(bottom: 20,top: 10),
                    indicator: BoxDecoration(
                        color: Colors.redAccent[100],
                        borderRadius: BorderRadius.circular(20.r)
                    ),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    labelStyle:const TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,
                    unselectedLabelStyle:const TextStyle(fontSize: 17,fontWeight: FontWeight.bold)  ,
                    indicatorColor:Colors.transparent ,
                    tabs:const [
                      Tab(
                        text:"Synthesis" ,
                      ),
                      Tab(
                        text:" Organic" ,
                      ),
                      Tab(
                        text:" Outdoor" ,
                      ),
                      Tab(
                        text:" Indoor" ,
                      ),
                    ],
                  ),
                ),
              ),
              body: Container(
                margin: const EdgeInsets.only(top: 20),
                child: const TabBarView(
                  children: [
                    Synthesis(),
                    Center(child: Text("Organic"),),
                    Center(child: Text("Outdoor"),),
                    Center(child: Text("Indoor"),),
                  ],
                ),
              ),
            )
        )
    );
  }
}
