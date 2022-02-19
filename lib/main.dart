import 'package:flutter/material.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/pages/signIn_page.dart';
import 'package:realapp/pages/sign_up_page.dart';
import 'package:realapp/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      routes:{
        HomePage.id: (context)=> HomePage(),
        SplashPage.id: (context)=> SplashPage(),
        SignInPage.id: (context)=> SignInPage(),
        SignUpPage.id: (context)=> SignUpPage(),
      }
    );
  }
}

