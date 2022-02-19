import 'package:flutter/material.dart';
import 'package:realapp/animations/fade_animation.dart';
import 'package:realapp/pages/signIn_page.dart';

import 'home_page.dart';
class SignUpPage extends StatefulWidget {
    static final String id = "sign_up_page";
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin{

   AnimationController _scaleController;
   Animation<double> _scaleAnimation;

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  _doSignUp(){
    String email = _emailController.text;
    String password = _passwordController.text;
    String name = _nameController.text;
    if(email.isNotEmpty && password.isNotEmpty && name.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaleController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 300));

    _scaleAnimation = Tween<double>(begin: 1.0, end: 30.0 ).animate(_scaleController)
    ..addStatusListener((status) {
      if(status == AnimationStatus.completed){

      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeAnimation(0.5, Text("Instagram",style: TextStyle(fontSize: 45, fontFamily: 'Billabong',),),),

              FadeAnimation(0.7, Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _nameController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),),

              FadeAnimation(0.9, Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              ),
              FadeAnimation(1, Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.teal,
                      ),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),),

              FadeAnimation(1.2, Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 48,
                width: double.infinity,
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: (){
                    _doSignUp();
                  },
                  textColor: Colors.white,
                  child: Text("Sign up", style: TextStyle(fontSize: 16, ),),

                ),
              ),),

              FadeAnimation(1.4, Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Already have an account",style: TextStyle(fontSize: 16, color: Colors.grey,),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap:(){
                        Navigator.pushNamed(context, SignInPage.id);
                      },
                      child: Text("Sign in", style: TextStyle(color: Colors.black,
                          fontSize: 16)),

                    ),
                  ],
                ),
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
