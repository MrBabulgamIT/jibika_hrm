import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/main.dart';
import 'package:jibika_plexus_hrmm/utils/app_config.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/controller/onboadring_con.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_2/views/page_2_onb.dart';
import 'package:jibika_plexus_hrmm/views/common/splash_screen/views/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreenPage1 extends StatelessWidget {
  const OnBoardingScreenPage1({super.key});

  _storeOnBoarding() async {
    int isViewed = 0;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setInt('OnBoarding', isViewed);
  }

  // final onBoardingCon = Get.find<OnBoardingController>();
  // final onBoardingCon = Get.put(OnBoardingController());

  @override
  Widget build(BuildContext context) {
    var img = "images/on_boarding_image_1.png";
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
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
                            height: 0.h,
                          ),
                          if (onBoardingCon.onBoardingData.data != null)
                            Image(
                              image: NetworkImage(
                                AppConfig.imageBaseUrl +
                                    onBoardingCon
                                        .onBoardingData.data![0].imgPath!,
                              ),
                              // image:
                              //     NetworkImage(onBoardingCon.onBoardingData.data![0].imgPath!),
                              height: 300.h,
                              width: 370.w,
                            ),
                          if (onBoardingCon.onBoardingData.data != null)
                            myStylesWhite16(
                              onBoardingCon
                                  .onBoardingData.data![0].englishDesc!,
                              FontWeight.w400,
                            ),
                          SizedBox(
                            height: 0.h,
                          ),
                          GestureDetector(
                            onTap: () async {
                              await _storeOnBoarding();
                              debugPrint(isViewed.toString());
                              // Get.to(CompanySignupPage());
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
                              onTap: () {
                                Get.to(const OnBoardingScreenPage2());
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
