import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti9_flutter/core/utils/app_assets.dart';
import 'package:nti9_flutter/core/utils/app_colors.dart';

import 'let_start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((v){
      Navigator.push(
          context, MaterialPageRoute(
          builder: (context)=> LetStartScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppSvgs.logo,
              width: double.infinity,
                height: 344.h,
              ),
              SizedBox(height: 44.h,),
              Text('TODO', style: TextStyle(
                fontSize: 36.sp,
                fontWeight: FontWeight.w900,
                color: AppColors.primary
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
