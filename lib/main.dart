import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:forntent_project_3/language/languages.dart';
import 'package:forntent_project_3/routes.dart';
import 'package:forntent_project_3/viwse/bottom_navScreen/home_screen.dart';
import 'package:forntent_project_3/viwse/splas_Screen.dart';
import 'package:forntent_project_3/viwse/ui_chalenge/ui3.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'const/app_theme.dart';
import 'controler/home_page_controler.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([ DeviceOrientation.portraitUp])
      .then((_){
    runApp(const MyApp());
  });

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context , child){
          return MultiProvider(
            providers: [
              ChangeNotifierProvider(create: (_) => HomeProvider()),
            ],
            child: GetMaterialApp(
              translations: Languages(),
              locale: const Locale("en","US"),
              fallbackLocale: const Locale("bn","BD"),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              themeMode: ThemeMode.system,
              darkTheme: AppTheme().darkTheme(context),
              theme:  AppTheme().lightTheme(context),
              home:HomeScreen (),
              initialRoute: homeScreen,
              getPages:getpayges,
            ),
          );
        }
    );
  }
}
