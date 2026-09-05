import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.green),
        title: Text("Home Screen", style: TextStyle(fontSize: 25)),
        centerTitle: true,
        actions: [Text('Hi'), SizedBox(width: 20), Icon(Icons.check_circle)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello World',
            style: TextStyle(
              fontFamily: 'Lexend_Deca',
              fontWeight: FontWeight.w100,
              fontSize: 50,
            ),
          ),
        ],
      ),
    );
  }
}
