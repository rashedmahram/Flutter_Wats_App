import 'package:flutter/material.dart';

// Colors
const iBlack = Colors.black;
const iYellow = Colors.yellow;
final iGrey = Colors.grey[400];
const iWhite = Colors.white;
final iGreen = Colors.green;
final iRed = Colors.red;

// Fonts
const iTextFamily = 'Cairo';
const double iFontSize=14;
const double iFontSizeHeader=18;
const double iFontSizeSubHeader=16;
// spaces
const ipadding = 10;

// style
class AppThemeData {
  static ThemeData lightTheme() => ThemeData(
        brightness: Brightness.light,
        primaryColor: iBlack,
        backgroundColor: iWhite,
        fontFamily: "Cairo",
        textTheme: const TextTheme(
          headline4: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}

// Strings
class Strings {
  static bool lang_ar = true;
  // Login_screen
  static String login_header = lang_ar ? "تسجيل الدخول" : "Login";
  static String login_sub_header = lang_ar
      ? "سجل الدخول الأن بواسطة البريد الإلكتروني وكلمة السر الخاصة بك"
      : "Login";
  static String login_mail_text = "البريد الإلكتروني:";
  static String login_email_hint = "إدخل البريد الإلكتروني الخاص بك هنا";
  static String login_password_text = "كلمة السر:";
  static String login_password_hint = "إدخل السر الخاص بك هنا";
  static String login_remember_me_text = "تذكرني";
  static String login_btn = "تسجيل الدخول";
  static String login_have_acount = "لاتمتلك حساب؟";
  static String login_new_acount = "إنشاء حساب جديد";
}
