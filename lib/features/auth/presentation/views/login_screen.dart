import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti9_flutter/core/helper/my_navigator.dart';
import 'package:nti9_flutter/core/utils/app_assets.dart';
import 'package:nti9_flutter/core/utils/app_colors.dart';
import 'package:nti9_flutter/features/auth/data/repo/auth_repo.dart';
import 'package:nti9_flutter/features/home/presentation/views/home_screen.dart';

import '../../../../core/components/custom_btn.dart';
import '../../../../core/components/custom_text_field.dart';
import '../../../../core/utils/app_paddings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  bool isPasswordSecure = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // image
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

            Padding(
              padding: AppPaddings.defaultPadding,
              child: Column(
                children: [
                  SizedBox(height: 23.h),
                  CustomTextField(
                    controller: usernameController,
                    hint: 'Username',
                    prefixIconPath: AppSvgs.profile,
                  ),

                  SizedBox(height: 10.h),
                  CustomTextField(
                    controller: passwordController,
                    hint: 'Password',
                    prefixIconPath: AppSvgs.password,
                    suffixIconPath: isPasswordSecure
                        ? AppSvgs.lockOpen
                        : AppSvgs.lockClosed,
                    onSuffixPressed: () {
                      setState(() {
                        isPasswordSecure = !isPasswordSecure;
                      });
                    },
                    obscureText: isPasswordSecure,
                  ),

                  // TextFormField(
                  //   style: TextStyle(
                  //     fontSize: 14.sp,
                  //     color: AppColors.black,
                  //     fontWeight: FontWeight.w300
                  //   ),
                  //   decoration: InputDecoration(
                  //     prefixIcon: Padding(
                  //       padding: REdgeInsets.all(16.0),
                  //       child: SvgPicture.asset(AppSvgs.profile),
                  //     ),
                  //     hintText: 'Username',
                  //     hintStyle: TextStyle(
                  //       fontWeight: FontWeight.w200,
                  //       fontSize: 14.sp,
                  //       color: AppColors.grey
                  //     ),
                  //     fillColor: Colors.white,
                  //     filled: true,
                  //
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(15.r)
                  //     ),
                  //     enabledBorder:  OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(15.r),
                  //       borderSide: BorderSide(
                  //         color: AppColors.lightGrey
                  //       )
                  //     )
                  //
                  //   ),
                  //
                  // ),
                  SizedBox(height: 23.h),
                  if (!isLoading)
                    CustomBtn(
                      text: 'Login',
                      onPressed: () async {
                        AuthRepo repo = AuthRepo();
                        setState(() {
                          isLoading = true;
                        });
                        var result = await repo.login(
                          username: usernameController.text,
                          password: passwordController.text,
                        );
                        result.fold(
                          // left
                              (errorMsg) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                errorMsg,
                                style: TextStyle(color: Colors.white),
                              ),
                              backgroundColor: Colors.red,
                            ),
                          );
                        },
                          // right
                                (userData){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Welcome ${userData.username}',
                                  style: TextStyle(color: Colors.white),),
                                  backgroundColor: AppColors.primary,)
                                );
                                MyNavigator.goTo(context, toPage: HomeScreen(),
                                type: NavigatorType.pushAndRemoveUntil);
                            }

                        );
                        setState(() {
                          isLoading = false;
                        });
                      },
                    ),
                  if (isLoading) CircularProgressIndicator(),
                ],
              ),
            ),
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
