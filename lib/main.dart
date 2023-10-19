import 'package:dasturlash_turlari/dasturlash_tillari/dart_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/delphi_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/java_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/javascript_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/kotlin_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/php_page.dart';
import 'package:dasturlash_turlari/dasturlash_tillari/python_page.dart';
import 'package:dasturlash_turlari/home_page.dart';
import 'package:dasturlash_turlari/info_page.dart';
import 'package:dasturlash_turlari/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
      routes: {
        SplashPage.id:(context)=>SplashPage(),
        HomePage.id:(context)=>HomePage(),
        DartPage.id:(context)=>DartPage(),
        JavaPage.id:(context)=>JavaPage(),
        DelphiPage.id:(context)=>DelphiPage(),
        JavascriptPage.id:(context)=>JavascriptPage(),
        KotlinPage.id:(context)=>KotlinPage(),
        PhpPage.id:(context)=>PhpPage(),
        PythonPage.id:(context)=>PythonPage(),
        InfoPage.id:(context)=>InfoPage()
      },

    );
  }
}
