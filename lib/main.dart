import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:barterland_app/source/features/product/widgets/item_reusable_widget.dart';
import 'package:barterland_app/source/features/product/views/exchange_screen.dart';
import 'package:barterland_app/source/features/product/views/post_screen.dart';
import 'package:barterland_app/source/features/product/views/category_screen.dart';
import 'package:barterland_app/source/features/product/views/edit_item_screen.dart';
import 'package:barterland_app/source/features/product/views/item_detail_screen.dart';
import 'package:barterland_app/source/features/product/views/item_display_screen.dart';
import 'package:barterland_app/source/features/product/views/camera_screen.dart';

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
          home: ExchangeScreen()
        );
      },
    );
  }
}
