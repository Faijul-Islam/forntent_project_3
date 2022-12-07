import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_chalenge_8/details.dart';

import '../../../const/text_stayle.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(34),
              child: Padding(
                padding: EdgeInsets.only(right: 70),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.redAccent[100],
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20.r)
                  ),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  labelStyle:TextStyle(fontSize: 17,fontWeight: FontWeight.bold) ,
                  unselectedLabelStyle:TextStyle(fontSize: 17,fontWeight: FontWeight.bold)  ,
                  indicatorColor:Colors.transparent ,
                  tabs:[
                    Tab(
                      text:"Styles" ,
                    ),
                    Tab(
                      text:"Classes" ,
                    ),
                    Tab(
                      text:"Teachers" ,
                    ),
                  ],
                ),
              ),

          ),
          body: TabBarView(
              children: [
                Center(child: Column(
                  children: [
                    Card(
                      elevation: 3,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.r)
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 70.h,
                                width:80.w,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(25)),
                                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSxayCAreCv_iTyv-pmjpwegdG39yKl4KtSg&usqp=CAU",fit: BoxFit.cover,)),
                              ),
                              SizedBox(width: 10.w,),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    Text("Hath yoga",style: CustomTextStyle.regularText(18.sp)),
                                    SizedBox(height: 5.h,),
                                    Text("Does this work for the camera as well?",style: CustomTextStyle.regularText(13.sp)),
                                    SizedBox(height: 5.h,),
                                    Text("which are better suited to Landscape ",style: CustomTextStyle.regularText(13.sp)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Card(
                      elevation: 3,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r)
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 70.h,
                              width:80.w,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSxayCAreCv_iTyv-pmjpwegdG39yKl4KtSg&usqp=CAU",fit: BoxFit.cover,)),
                            ),
                            SizedBox(width: 10.w,),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text("yin yoga",style: CustomTextStyle.regularText(20.sp)),
                                  SizedBox(height: 5.h,),
                                  Text("Because when you launching the app",style: CustomTextStyle.regularText(13.sp)),
                                  SizedBox(height: 5.h,),
                                  Text("Because when you launching the app",style: CustomTextStyle.regularText(13.sp)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Card(
                      elevation: 3,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.r)
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 70.h,
                              width:80.w,
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSxayCAreCv_iTyv-pmjpwegdG39yKl4KtSg&usqp=CAU",fit: BoxFit.cover,)),
                            ),
                            SizedBox(width: 10.w,),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text("yin yoga",style: CustomTextStyle.regularText(20.sp)),
                                  SizedBox(height: 5.h,),
                                  Text("Because when you launching the app",style: CustomTextStyle.regularText(13.sp)),
                                  SizedBox(height: 5.h,),
                                  Text("Because when you launching the app",style: CustomTextStyle.regularText(13.sp)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
                Center(child: Text("Classes"),),
                Center(child: Text("Teachers"),),
              ]
          ),
        ),
      ),
    );
  }
}
