import 'package:forntent_project_3/viwse/Choose%20language.dart';
import 'package:forntent_project_3/viwse/auth/authentication_screen.dart';
import 'package:forntent_project_3/viwse/auth/login/login_screen.dart';
import 'package:forntent_project_3/viwse/auth/login/otp_screen.dart';
import 'package:forntent_project_3/viwse/auth/register/otp_screen.dart';
import 'package:forntent_project_3/viwse/auth/register/register_screen.dart';
import 'package:forntent_project_3/viwse/auth/register/register_succss.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/chat_details_screen.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/home_screen.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/myad/mySell_screen.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/myad/seeAllTow.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/myad/seeall_three.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/myad/seeallone.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/myad/success.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/product_screen.dart';
import 'package:forntent_project_3/viwse/onbording_screen.dart';
import 'package:forntent_project_3/viwse/splas_Screen.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui3.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui_home.dart';
import 'package:get/get.dart';

import 'viwse/auth/login/login_success.dart';
const String dashboardScreen='/dashboardScreen';
const String uiHome='/ui_Home';
const String splashScreen='/splashScreen';
const String chooseLanguage='/Choose_language';
const String onbordingScreen='/Onbording_Screen';
const String authentication='/authentication';
const String registerScreen='/register_Screen';
const String registerSuccess='/register_Success';
const String oTPScreen='/oTPUp_Screen';
const String loginScreen='/login_Screen';
const String loginOTPScreen='/loginOTP_Screen';
const String oTPINScreen='/oTPINScreen';
const String loginSuccess='/login_Success';
const String homeScreen='/home_Screen';
const String seeAllScreen='/seeAll_Screen';
const String seeAllTow='/seeAllTow';
const String success='/success';
const String productScreen='/product_Screen';
const String chatDetailsScreen='/chatDetails_Screen';

const String mySellScreen='/mySell_Screen';
const String seeAllThree='/seeAll_Three';

List<GetPage> getpayges=[
  GetPage(name: splashScreen, page:() =>SplasScreen()),
  GetPage(name: uiHome, page:() =>UiHome()),
  GetPage(name: chooseLanguage, page:() =>Chooselanguage()),
  GetPage(name: onbordingScreen, page:() =>OnbordingScreen()),
  GetPage(name: authentication, page:() =>Authentication()),
  GetPage(name: registerScreen, page:() =>RegisterScreen()),
  GetPage(name: registerSuccess, page:() =>RegisterSuccess()),
  GetPage(name: oTPScreen, page:() =>OTPScreen()),
  GetPage(name: loginScreen, page:() =>LoginScreen()),
  GetPage(name: loginOTPScreen, page:() =>LoginOTPScreen()),
  GetPage(name: loginSuccess, page:() =>LoginSuccess()),
  GetPage(name: homeScreen, page:() =>HomeScreen()),
  GetPage(name: seeAllScreen, page:() =>SeeAllScreen()),
  GetPage(name: seeAllTow, page:() =>SeeAllTow()),
  GetPage(name: seeAllThree, page:() =>SeeAllThree()),
  GetPage(name: mySellScreen, page:() =>MySellScreen()),
  GetPage(name: success, page:() =>Success()),
  GetPage(name: productScreen, page:() =>ProductScreen()),
  GetPage(name: chatDetailsScreen, page:() =>ChatDetailsScreen()),

];