// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool status1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.only(top: 70,left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/Group.png", height: 70,width: 70),
              Text("EventHub",
                  style:
                      TextStyle(fontSize: 30,),
                  textAlign: TextAlign.center),
              SizedBox(height: 15),
              Row(
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "abc@email.com",hintStyle: TextStyle(fontSize: 16),
                  prefixIcon: Icon(Icons.mail),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  FlutterSwitch(
                    padding: 2.0,
                    toggleSize: 15,
                    height: 22,
                    width: 40,
                    activeColor: Color(0xFF5669FF),
                    value: status1,
                    onToggle: (val) {
                      setState(() {
                        status1 = val;
                      });
                    },
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Remember Me",
                    style: TextStyle(
                        fontSize: 14.0,),
                  ),
                  SizedBox(width: 55),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 14.0,),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SignUp())),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Color(0xFF5669FF),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width:65),
                        Text(
                          'SIGN IN ',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                        SizedBox(width: 65),
                        CircleAvatar(
                          backgroundColor: Color(0xFF3D56F0),
                          radius: 12,
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "OR",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 50,
                  width: 280,
                  color: Colors.grey.shade50,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset("assets/google.png"),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Login with Google",
                          style: TextStyle(
                              fontSize: 16,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  height: 50,
                  width: 280,
                  color: Colors.grey.shade50,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image.asset("assets/fb.png"),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Login with Facebook",
                          style: TextStyle(
                              fontSize: 16,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style:
                        TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue.shade300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
