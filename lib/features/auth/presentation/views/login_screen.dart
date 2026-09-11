import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nti9_flutter/core/utils/app_assets.dart';
import 'package:nti9_flutter/core/utils/app_colors.dart';

import '../../../../core/components/custom_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.r),
                bottomLeft: Radius.circular(20.r),
              ),
              child: Image.asset(
                AppImages.flag,
                width: double.infinity,
                height: 293.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 23.h,),
            TextFormField(),
            SizedBox(height: 10.h,),
            TextFormField(),
            SizedBox(height: 23.h,),
            CustomBtn(
              text: 'Login',
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}

/*

غياب يوم الجمعة 11/9
احمد حمدي
عبدالله وليد
منة الله علي
ياسمينا
يوسف
 */