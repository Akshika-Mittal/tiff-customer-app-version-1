import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tiffin_version1/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'Screens/splash/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TIFF!',
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Colors.white,
      // ),
      //scaffoldBackgroundColor: Colors.white,
      theme: theme(),
      home: SplashScreen(),
      //initialRoute: SplashScreen.routeName,
      //routes: routes,
    );
  }
}