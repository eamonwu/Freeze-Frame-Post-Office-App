import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freeze_frame_post_office_app/routes/route.dart';
import 'package:freeze_frame_post_office_app/view/home_screen.dart';
import 'package:freeze_frame_post_office_app/view/login_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          home: LoginScreen(),
          debugShowCheckedModeBanner: false,
          getPages: Routes,
        );
      },
    );
  }
}
