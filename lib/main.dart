import 'package:flutter/material.dart';
import 'package:wats_app/const.dart';
import 'package:wats_app/core/routes.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.Home.name,
      routes: Routes,
      theme: AppThemeData.lightTheme(),
    );
  }
}