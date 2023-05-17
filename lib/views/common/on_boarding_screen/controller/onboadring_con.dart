import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jibika_plexus_hrmm/utils/api_url.dart';
import 'package:jibika_plexus_hrmm/views/common/auth/login/views/login_page.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_1/views/page_1_onb.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_2/views/page_2_onb.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_3/views/page_3_onb.dart';
import '../model/onboarding_model.dart';

class OnBoardingController extends GetxController {
  var isLoading = false.obs;
  get getIsLoading => isLoading.value;
  set setIsLoading(value) => isLoading.value = value;
  var selectedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastPage => selectedPageIndex.value == onBoardingPages.length - 1;

  @override
  void onInit() {
    super.onInit();
    // fetchOnBoarding();
  }

  void changeLoading(bool value) {
    setIsLoading = value;
    update();
  }

  forwardAction() {
    if (isLastPage) {
      Get.to(LoginPage());
    } else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  final List<Widget> onBoardingPages = [
    const OnBoardingScreenPage1(),
    const OnBoardingScreenPage2(),
    const OnBoardingScreenPage3(),
  ];

  OnBoardingModel onBoardingData = OnBoardingModel();
  Future<bool> fetchOnBoarding() async {
    try {
      changeLoading(true);
      var uri = Uri.parse(APIUrl.onBoardSc);
      final response = await http.get(
        uri,
        headers: {
          "Accept": "application/json",
          "Content-type": "application/x-www-from-urlencoded"
        },
      );

      var value = jsonDecode(response.body.toString());
      if (response.statusCode == 200) {
        onBoardingData = OnBoardingModel.fromJson(value);
        log("Get onBoarding data : $onBoardingData");
        changeLoading(false);
      } else {
        changeLoading(false);
        log("Error from onBoarding else else");
      }
      return true;
    } catch (e) {
      log("error from get onBoarding catch $e");
      changeLoading(false);
      return false;
    }
  }
}
