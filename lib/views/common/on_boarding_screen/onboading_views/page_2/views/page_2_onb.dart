import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_3/views/page_3_onb.dart';
import 'package:jibika_plexus_hrmm/views/common/splash_screen/views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../utils/app_config.dart';
import '../../../controller/onboadring_con.dart';

class OnBoardingScreenPage2 extends StatelessWidget {
  const OnBoardingScreenPage2({super.key});
  _storeOnBoarding() async {
    int isViewed = 0;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt('OnBoarding', isViewed);
  }

  // final onBoardingCon = Get.find<OnBardingController>();
  // final onBoardingCon = Get.put(OnBardingController());
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
                                  await _storeOnBoarding();
                                  Get.to(Splash_Screen());
                                },
                                child: myStylesText17("Skip", FontWeight.w600),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          if (onBoardingCon.onBoardingData.data != null)
                            myStylesWhite16(
                              onBoardingCon
                                  .onBoardingData.data![1].englishDesc!,
                              FontWeight.w400,
                            ),
                          SizedBox(
                            height: 0.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Image(
                              image: NetworkImage(
                                AppConfig.imageBaseUrl +
                                    onBoardingCon
                                        .onBoardingData.data![1].imgPath!,
                              ),
                              height: 300.h,
                              width: 370.w,
                            ),
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
                            height: 5.h,
                          ),
                          Center(
                            child: GestureDetector(
                              onTap: () {
                                Get.to(const OnBoardingScreenPage3());
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
