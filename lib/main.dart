import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nti9_flutter/core/utils/app_assets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (_ , child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Lexend_Deca'
        ),
        home: HomeScreen()
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Image.asset(AppImages.flag,
            width: double.infinity,
            height: 298.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 30,),

          
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                controller: controller,
                // enabled: false,
                // readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: 'Enter Your Name',
                  labelText: 'Name',
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2
                    )

                  ),
                  disabledBorder: UnderlineInputBorder(),
                  // errorBorder: ,
                  // focusedErrorBorder: ,
                  prefixIcon: Icon(Icons.title),
                  suffixIcon: Icon(Icons.local_airport)
                ),
                onChanged: (String value){
                  print(value);
                },
                // onTap: (){
                //   showTimePicker(context: context, initialTime: TimeOfDay.now());
                // },
                obscureText: true,
                obscuringCharacter: '*',

              )),
          SizedBox(height: 30,),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 22.0),
            child: SizedBox(
              width: double.infinity,
              // height: 150,
              child: ElevatedButton(onPressed: (){
                print(controller.text);
              },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Colors.blue,
                      width: 2
                    )
                  ),
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.black,
                  elevation: 10,
                  shadowColor: Colors.blue,
                ), child: Text('Button 1'),

              ),
            ),
          ),
          TextButton(onPressed: (){
            print('Text Button 01 pressed');
          },
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.black,
                elevation: 10,
                shadowColor: Colors.blue,
              ),
              child: Text('Text Button 01')),
          
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_rounded)),

          


        ],
      ),
    );
  }
}
