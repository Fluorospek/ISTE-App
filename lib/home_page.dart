import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Homepage(),
      ),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          overflow: Overflow.visible,
          children: [
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                color: Color(0xFFD1470CBD),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 65.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.menu_outlined,
                            size: 35,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -80,
              child: Container(
                height: 182.0,
                width: 327.0,
                padding: EdgeInsets.only(top: 10.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.14),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 91.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/img_4.png'),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'My Chaperone',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Your personal Campus Guide',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 150.0,
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Navigation Pressed');
                },
                child: Container(
                  height: 110.0,
                  width: 150.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 0.001,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          height: 69.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/img.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Container(
                          child: Text(
                            'Navigation',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Eateries Pressed');
                },
                child: Container(
                  height: 110.0,
                  width: 150.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 0.001,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          height: 69.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/img_1.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.3,
                        ),
                        Container(
                          child: Text(
                            'Eateries',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('Restroom Pressed');
                },
                child: Container(
                  height: 110.0,
                  width: 150.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 0.001,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          height: 72.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/img_2.png'),
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Restroom',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 250.0,
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('WIFI Pressed');
                },
                child: Container(
                  height: 110.0,
                  width: 150.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          spreadRadius: 0.001,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.0,
                        ),
                        Container(
                          height: 70.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/img_3.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.8,
                        ),
                        Container(
                          child: Text(
                            'WIFI',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
