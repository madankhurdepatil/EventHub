// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pro_flutter/event_details.dart';
import 'package:pro_flutter/verification.dart';
import 'widget/textfieldwidget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 20,right: 20,),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 230),
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFieldWidget(icon: Icon(Icons.person), label: 'Full name'),
              TextFieldWidget(label: "abc@gmail.com", icon: Icon(Icons.mail)),
              TextFieldWidget(label: "Your password",icon: Icon(Icons.lock),sicon: Icon(Icons.remove_red_eye)),
              TextFieldWidget(label: "Confirm password", icon: Icon(Icons.lock),sicon: Icon(Icons.remove_red_eye)),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Verification())),
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
                          "SIGN UP",
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
              SizedBox(height: 20),
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
              SizedBox(height: 10),
              GestureDetector(
                onTap : () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EventDetails())),
                child: ClipRRect(
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
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                          child: Image.asset("assets/fb.png"),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Login with Facebook",
                          style: TextStyle(
                              fontSize: 16),
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
                    "Already have an account?",
                    style:
                    TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign in",
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
