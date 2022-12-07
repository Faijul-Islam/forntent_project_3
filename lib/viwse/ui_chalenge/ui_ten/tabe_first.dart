import 'package:flutter/material.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/best_seller.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_ten/recomendetion.dart';

class TabeFirst extends StatelessWidget {
  const TabeFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: DefaultTabController(
          length: 2,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.redAccent[100],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle:const TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,
                      unselectedLabelStyle:const TextStyle(fontSize: 17,fontWeight: FontWeight.bold)  ,
                      indicatorColor:Colors.transparent ,
                      tabs:const [
                        Tab(
                          text:"Recommendation" ,
                        ),
                        Tab(
                          text:" Best seller" ,
                        ),
                      ],
                  ),
                ),
              ),
              body: Container(
                margin: const EdgeInsets.only(top: 20),
                child: const TabBarView(
                    children: [
                      Recomendetion(),
                      BestSeller()
                    ],
                ),
              ),
            )
        )
    );
  }
}
