import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/controller/onboadring_con.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_1/views/page_1_onb.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_2/views/page_2_onb.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/onboading_views/page_3/views/page_3_onb.dart';

class OnBoardingMain extends StatefulWidget {
  const OnBoardingMain({Key? key}) : super(key: key);

  @override
  State<OnBoardingMain> createState() => _OnBoardingMainState();
}

class _OnBoardingMainState extends State<OnBoardingMain> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [
    OnBoardingScreenPage1(),
    OnBoardingScreenPage2(),
    const OnBoardingScreenPage3(),
  ];

  final _controller = OnBoardingController();

  OnBoardingController onBoardingCon = Get.put(OnBoardingController());

  @override
  void initState() {
    super.initState();
    onBoardingCon.fetchOnBoarding();
  }

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    final height = Get.height;

    return Scaffold(
      body: PageView.builder(
        controller: _controller.pageController,
        onPageChanged: _controller.selectedPageIndex,
        itemCount: _controller.onBoardingPages.length,
        itemBuilder: (context, index) {
          return _pages[index % _pages.length];
        },
      ),
    );
  }
}
