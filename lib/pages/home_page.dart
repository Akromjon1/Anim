import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram",style: TextStyle(fontFamily: 'Billabong', fontSize: 40,letterSpacing: 2.0),),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Billabong', fontSize: 40),),
      ),
    );
  }
}
