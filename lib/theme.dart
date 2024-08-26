import 'package:flutter/material.dart';
import 'package:tiffin_version1/utils/AppColors.dart';

import 'utils/constants.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    //primarySwatch: Colors.red,
    //fontFamily: "SansPro",
    appBarTheme: appBarTheme(),
    //textTheme: themeText(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder =OutlineInputBorder(
    //borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor),
    gapPadding: 10,
  );

  return InputDecorationTheme(

    floatingLabelBehavior:FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42,vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

// TextTheme themeText() {
//   return TextTheme(
//     bodyText1: TextStyle(
//       color: kTextColor,
//     ),
//     bodyText2: TextStyle(
//       color: kTextColor,
//     ),
//   );
// }

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Color(0xFFF5F5F5),
    elevation: 0,
    //brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: kBlackColor,),
    // textTheme: TextTheme(
    //   headline1: TextStyle(
    //     color: Color(0xFF888888),
    //     fontSize: 18,
    //   ),
    // ),
  );
}

// CheckboxTheme checkboxTheme(){
//   return checkboxTheme(
//     shape:RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(100),
//     )
//   );
// }
