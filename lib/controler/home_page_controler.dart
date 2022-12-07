import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier{
  int _currentIndexHomePage = 0;

  get currentIndexHomePage => _currentIndexHomePage;


  //===========controlling the home bottom bar===========
  //---------------------------------------------------------
  setCurrentIndexCustomerHomePage(int index){
    _currentIndexHomePage = index;
    notifyListeners();
  }

}