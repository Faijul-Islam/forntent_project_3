import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../const/text_stayle.dart';
import '../../controler/home_page_controler.dart';
import 'account_Screen.dart';
import 'chat_screen.dart';
import 'dashBord_screen.dart';
import 'myAds_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final _page = [
    DashBordScreen(),
    MyAdsScreen(),
    ChatScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var _homeProvider = Provider.of<HomeProvider>(context, listen: true);
    return Scaffold(
      body: _page[_homeProvider.currentIndexHomePage],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 14.sp,
        selectedLabelStyle: CustomTextStyle.mediumText(12.sp),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          _homeProvider.setCurrentIndexCustomerHomePage(index);
        },
        currentIndex: _homeProvider.currentIndexHomePage,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                size: 30,
              ),
              label: "My Ads"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.commentDots), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "Account"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Help & Support"),
                  content: Container(
                    height: 328.h,
                    width: 368.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Column(
                      children: [
                        SizedBox(height: 40.h,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundColor: Colors.red,
                              child: Icon(Icons.arrow_right),
                            ),
                            Text(
                              "  Fix My Location Problem",
                              style: CustomTextStyle.mediumText(18.sp,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.h,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundColor: Colors.red,
                              child: FaIcon(FontAwesomeIcons.arrowRight),
                            ),
                            Text(
                              "  How to use this app",
                              style: CustomTextStyle.mediumText(18.sp,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                        SizedBox(height: 22.h,),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundColor: Colors.white,
                              child: FaIcon(
                                FontAwesomeIcons.person,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "  Contact us for Location",
                              style: CustomTextStyle.mediumText(18.sp,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        child: const FaIcon(FontAwesomeIcons.circleQuestion),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
