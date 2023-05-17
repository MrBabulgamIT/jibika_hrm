import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/views/common/auth/login/views/login_page.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../admin/bottom_nav_new/nav_main/views/nav_main.dart';

class Splash_Screen extends StatefulWidget {
  Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      var token = await sharedPreferences.getString('token');
      Timer(const Duration(seconds: 3), () {
        if (token == null) {
          Get.to(() => LoginPage());
        } else {
          Get.to(() => const BottomNavMainPage());
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "images/login_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 107.h,
            ),
            Image.asset(
              "images/login_logo.png",
              height: 111.h,
              width: 117.w,
            ),
            SizedBox(
              height: 185.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: LinearPercentIndicator(
                animation: true,
                animationDuration: 3000,
                lineHeight: 4.h,
                percent: 1,
                progressColor: colorPrimary,
              ),
            ),
            SizedBox(
              height: 270.h,
            ),
            Image.asset(
              "images/splash_screen.png",
              height: 83.h,
              width: 291.w,
            ),
          ],
        ),
      ),
    );
  }
}
