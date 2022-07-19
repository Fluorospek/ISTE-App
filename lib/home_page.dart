import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String name = 'Default';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hello $name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReusableCard(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  ReusableCard(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  ReusableCard(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  ReusableCard(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  ReusableCard(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.screenHeight, required this.screenWidth});

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: EdgeInsets.all(8.0),
      height: screenHeight * 0.35,
      width: screenWidth * 0.4,
    );
  }
}
