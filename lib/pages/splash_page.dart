import 'dart:async';

import 'package:flutter/material.dart';
import 'package:realapp/pages/home_page.dart';
import 'package:realapp/pages/signIn_page.dart';
class SplashPage extends StatefulWidget {
  static final String id = "splash_page";


  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  _initTimer(){
    Timer(Duration(seconds: 3),(){
      Navigator.pushNamed(context, SignInPage.id);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Center(
                child: Image.asset("assets/images/ic_logo1.png", height: 80, width: 80,),
              ),

              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Text("From Meta", style: TextStyle(color: Colors.black, fontSize: 17),),
                    )
                  ],
                ),
              ),
            ],
          )
        ),
    );
  }
}
