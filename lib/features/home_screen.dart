import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nti9 Flutter"),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) =>  Container(
            height: 200.h,
            width: 200.w,
            color: Colors.blue,
          ),
          separatorBuilder: (context, index) => SizedBox(height: 10.h,),
          itemCount: 10
      ),
    );
  }
}
