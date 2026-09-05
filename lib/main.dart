import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lexend_Deca'
      ),
      home: HomeScreen()
    );
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
              fontWeight: FontWeight.w300,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20,),
          Image.asset("assets/images/flag.png")
        ],
      ),
    );
  }
}
