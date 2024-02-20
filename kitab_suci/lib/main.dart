import 'package:flutter/material.dart';
import 'package:kitab_suci/screen/accountPage.dart';
import 'package:kitab_suci/screen/accountSetting.dart';
import 'package:kitab_suci/screen/editProfil.dart';
import 'package:kitab_suci/screen/introPage.dart';
import 'package:kitab_suci/screen/introPage2.dart';
import 'package:kitab_suci/screen/loginPage.dart';
import 'package:kitab_suci/screen/splashscreen.dart';
import 'package:kitab_suci/screen/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),useMaterial3: true,),
      home: accountSetting(),
    );
  }
}