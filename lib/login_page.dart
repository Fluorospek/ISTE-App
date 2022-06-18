import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'signup_page.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = 'Default';
  String password = 'Default';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 30,
                      child: Text(
                        'LOGIN',
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 178, 0),
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 320,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                        child: Text('Submit'),
                        onPressed: () {
                          print('Hello');
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          text: 'New User? ',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                          ),
                          children: [
                            TextSpan(
                              text: 'Signup here',
                              style: TextStyle(
                                color: Colors.lightBlueAccent,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Get.to(() => SignupPage()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
