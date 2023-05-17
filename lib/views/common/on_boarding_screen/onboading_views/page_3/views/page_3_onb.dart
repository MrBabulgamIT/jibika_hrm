import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/views/common/auth/login/views/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../utils/app_config.dart';
import '../../../controller/onboadring_con.dart';

class OnBoardingScreenPage3 extends StatelessWidget {
  const OnBoardingScreenPage3({super.key});
  _storeOnBoarding() async {
    int isViwed = 0;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt('OnBoarding', isViwed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<OnBoardingController>(
          init: OnBoardingController(),
          builder: (onBoardingCon) {
            return onBoardingCon.getIsLoading
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                  onTap: (() => Get.back()),
                                  child: Image.asset(
                                    "images/arrow_back.png",
                                    height: 25,
                                    width: 13,
                                    color: colorSecondary,
                                  )),
                              GestureDetector(
                                onTap: () async {
                                  Get.to(LoginPage());
                                  await _storeOnBoarding();
                                },
                                child: myStylesText17("Skip", FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Image(
                            image: NetworkImage(
                              AppConfig.imageBaseUrl +
                                  onBoardingCon
                                      .onBoardingData.data![2].imgPath!,
                            ),
                            height: 300.h,
                            width: 370.w,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          if (onBoardingCon.onBoardingData.data != null)
                            myStylesWhite16(
                              onBoardingCon
                                  .onBoardingData.data![2].englishDesc!,
                              FontWeight.w400,
                            ),
                          SizedBox(
                            height: 20.h,
                          ),
                          GestureDetector(
                            onTap: () async {
                              await _storeOnBoarding();
                            },
                            child: myStylesText14Underline(
                                "Register as a Company",
                                colorPrimary,
                                FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () async {
                                Get.to(LoginPage());
                                await _storeOnBoarding();
                              },
                              child: Image(
                                image: const AssetImage(
                                  "images/next_button.png",
                                ),
                                height: 90.h,
                                width: 90.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          }),
    );
  }
}
