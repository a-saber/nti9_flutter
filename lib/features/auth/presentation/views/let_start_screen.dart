import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti9_flutter/core/utils/app_assets.dart';
import 'package:nti9_flutter/core/utils/app_colors.dart';

import '../../../../core/components/custom_btn.dart';
import 'login_screen.dart';

class LetStartScreen extends StatelessWidget {
  const LetStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: REdgeInsets.symmetric(horizontal: 12.0),
              child: SvgPicture.asset(
                AppSvgs.onBoarding,
                width: double.infinity,
                height: 342.h,
              ),
            ),
            Text(
              'Welcome To\nDo It !',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 24.sp,
                color: AppColors.black,
              ),

              textAlign: TextAlign.center,
            ),

            Text(
              "Ready to conquer your tasks? Let's Do It together.",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                color: AppColors.grey,
              ),
              textAlign: TextAlign.center,
            ),

            CustomBtn(
              text: "Let's Start",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
