// @dart=2.9
import 'package:cheerup/UI/quotes/quote_popup.dart';
import 'package:cheerup/services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:splashscreen/splashscreen.dart';
import 'UI/homepage.dart';
import 'database/db_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  await Future.delayed(Duration(seconds: 3));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*return new SplashScreen(
        seconds: 3,
        navigateAfterSeconds: quote_popup(),
        title: new Text(
          'Welcome In SplashScreen',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.asset('assets/images/Logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter Egypt"),
        loaderColor: Colors.red);*/
    return GetMaterialApp(
      title: 'Chair Up',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFFFF9F0),
          brightness: Brightness.light,
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFFFFF9F0))),
      themeMode: ThemeService().theme,
      home: quote_popup(),
    );
  }
}
