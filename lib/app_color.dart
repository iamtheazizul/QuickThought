// import 'dart:ui';

// class AppColors {
//   AppColors._();


// }
import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor =  Color(0xFFEC613C);
  static const Color primaryAccent =  Color(0xFFD54018);
  static const Color primaryBackground =  Color(0xFFFCF0ED);
  static Color secondaryColor = const Color.fromRGBO(45, 45, 45, 1);
  static Color secondaryAccent = const Color.fromRGBO(35, 35, 35, 1);
  static Color titleColor = const Color.fromRGBO(200, 200, 200, 1);
  static Color textColor = const Color.fromRGBO(150, 150, 150, 1);
  static Color successColor = const Color.fromRGBO(9, 149, 110, 1);
  static Color highlightColor = const Color.fromRGBO(212, 172, 13, 1);
  
  static const Color primaryEventBackgroundColor =  Color(0xFFFFD5C4);
  static const Color primaryEventBorder =   Color(0xFFED201D);
  static const Color primaryEventTitle =  Color(0xFFA50200);

  static const Color secondaryEventBackgroundColor =  Color(0xFFBFC6FF);
  static const Color secondaryEventBorder =  Color(0xFF3F4BB3);
  static const Color secondaryEventTitle = Color(0xFF192AAF);

  static const Color tertiaryEventBackgroundColor =  Color(0xFFD6C8FF);
  static const Color tertiaryEventBorder =   Color(0xFF985DF6);
  static const Color tertiaryEventTitle = Color(0xFF4608AA);

  static const Color quaternaryEventBackgroundColor =  Color(0xFFF6EACB);
  static const Color quaternaryEventBorder =   Color(0xFFED201D);
  static const Color quaternaryEventTitle =  Color(0xFFA50200);

  static const Color quinaryEventBackgroundColor =  Color(0xFFBDEED0);
  static const Color quinaryEventBorder =   Color(0xFF684D08);
  static const Color quinaryEventTitle =  Color(0xFF684D08);

  static const Color availableEventBackgroundColor =  Color(0xFFECEF5E);
  static const Color availableEventBorder =  Color(0xFFA0A224);
  static const Color availableEventTitle =  Color(0xFF232403);
  
  static const Color black = Color(0xff626262);
  static const Color radiantWhite = Color(0xffffffff);
  static const Color white = Color(0xfff0f0f0);
  static const Color bluishGrey = Color(0xffdddee9);
  static const Color navyBlue = Color(0xff6471e9);
  static const Color lightNavyBlue = Color(0xffb3b9ed);
  static const Color red = Color(0xfff96c6c);
  static const Color grey = Color(0xffe0e0e0);

}

ThemeData primaryTheme = ThemeData(

  // seed color theme
  // colorScheme: ColorScheme.fromSeed(
  //   seedColor: AppColors.primaryColor,
  // ),

  // scaffold color
  // scaffoldBackgroundColor: AppColors.secondaryAccent,

  // app bar theme colors
  // appBarTheme: AppBarTheme(
  //   backgroundColor: AppColors.secondaryColor,
  //   foregroundColor: AppColors.textColor,
  //   surfaceTintColor: Colors.transparent,
  //   centerTitle: true,
  // ),

  // text theme
  textTheme: TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.primaryEventTitle,
      fontSize: 16,
      letterSpacing: 1,
    ),
    headlineMedium: TextStyle(
      color: AppColors.titleColor, 
      fontSize: 16,
      fontWeight: FontWeight.bold, 
      letterSpacing: 1,
    ),
    titleMedium: TextStyle(
      color: AppColors.titleColor, 
      fontSize: 18, 
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    ),
  ),

  // card theme
  // cardTheme: CardTheme(
  //   color: AppColors.secondaryColor.withOpacity(0.5),
  //   surfaceTintColor: Colors.transparent,
  //   shape: const RoundedRectangleBorder(),
  //   shadowColor: Colors.transparent,
  //   margin: const EdgeInsets.only(bottom: 16)
  // ),

  // // input decoration theme
  // inputDecorationTheme: InputDecorationTheme(
  //   filled: true,
  //   fillColor: AppColors.secondaryColor.withOpacity(0.5),
  //   border: InputBorder.none,
  //   labelStyle: TextStyle(color: AppColors.textColor),
  //   prefixIconColor: AppColors.textColor,
    
  // ),

  // // dialog theme
  // dialogTheme: DialogTheme(
  //   backgroundColor: AppColors.secondaryAccent,
  //   surfaceTintColor: Colors.transparent,
  // )
  
);
