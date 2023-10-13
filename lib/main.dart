import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BarterlandApp());
}

class BarterlandApp extends StatelessWidget {
  const BarterlandApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Barterland App',
          home: Scaffold(
            body: SafeArea(
                child: Center(
              child: Text(
                'Your app starts here',
                style: TextStyle(fontSize: 30),
              ),
            )),
          ),
        );
      },
    );
  }
}
