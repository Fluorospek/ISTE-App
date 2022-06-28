import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final auth = FirebaseAuth.instance;
  String email = 'Default';
  String password = 'Default';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                overflow: Overflow.visible,
                children: [
                  Container(
                    height: height * 0.45,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/campus.png'),
                        fit: BoxFit.fill,
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.65), BlendMode.dstATop),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    child: Container(
                      height: 23.0,
                      width: 700.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.1, 0.6],
                          colors: [Colors.transparent, Colors.black],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(40, 80, 0, 0),
                      child: Image.asset(
                        'images/iste_logo.png',
                        scale: 1.7,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: height * 0.50,
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 30,
                      child: Text(
                        'SIGNUP',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Text(
                        'USERNAME',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SizedBox(
                        width: 320,
                        height: 39,
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                            hintText: 'Username',
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Text(
                        'PASSWORD',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: SizedBox(
                        width: 320,
                        height: 39,
                        child: TextField(
                          obscureText: true,
                          onChanged: (value) {
                            password = value;
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                            hintText: 'Password',
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 320,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                        child: Text('Submit'),
                        onPressed: () async {
                          try {
                            final newuser =
                                await auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            if (newuser != null) {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()),
                              );
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
