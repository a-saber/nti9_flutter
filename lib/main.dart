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
          Container(
              color: Colors.green,
              child: Text('data data data data data data ')),
          SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(
                top: 10,
                left: 10
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 20
          ),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              // shape: BoxShape.circle,
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [Colors.black, Colors.grey, Colors.black],
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, -5)
                )
              ]

            ),
            alignment: Alignment.topLeft,
            child: Icon(Icons.two_k_plus_sharp),
          ),
        ],
      ),
    );
  }
}
