import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('Home'),
        actions: [
          Text('test'),
          SizedBox(width: 20,),
          Icon(Icons.check_circle)
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
              "Hello World",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 45,
              fontWeight: FontWeight.w900,
              letterSpacing: -5,
              wordSpacing: -10,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              decorationColor: Colors.red,
              backgroundColor: Colors.yellow,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.fade,
          ),
          SizedBox(height: 20,),
          Icon(Icons.add_box_rounded, color: Colors.green,size: 25,)
          
        ],
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}