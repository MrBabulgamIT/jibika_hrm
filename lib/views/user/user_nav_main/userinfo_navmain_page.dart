import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/views/user/user_nav_screen/office_information/views/user_office_info.dart';
import 'package:jibika_plexus_hrmm/views/user/user_nav_screen/personal_information/views/user_personal_info.dart';
import 'package:jibika_plexus_hrmm/views/user/user_nav_screen/referer_information/views/user_referer_info.dart';
import 'package:jibika_plexus_hrmm/views/user/user_nav_screen/user_salary/views/user_salary_info.dart';

class UserInfo_Nav_Main_Page extends StatefulWidget {
  const UserInfo_Nav_Main_Page({super.key});

  @override
  State<UserInfo_Nav_Main_Page> createState() => _UserInfo_Nav_Main_PageState();
}

class _UserInfo_Nav_Main_PageState extends State<UserInfo_Nav_Main_Page> {
  var currentTab = 1;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = UserPersonalInformationPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          height: 60.h,
          decoration: const BoxDecoration(
            color: textcolorWhite,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5, color: Colors.black, offset: Offset(0, 0))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentScreen = UserPersonalInformationPage();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage("images/name_icon.png"),
                        height: 27.h,
                        width: 27.w,
                        color: currentTab == 1 ? colorPrimary : colorSecondary,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      myStyleCustome(
                          "Personal",
                          12.sp,
                          currentTab == 1 ? colorPrimary : colorSecondary,
                          FontWeight.w500),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentScreen = const UserOfficialInformationPage();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage("images/official_Info.png"),
                        height: 25.h,
                        width: 25.w,
                        color: currentTab == 2 ? colorPrimary : colorSecondary,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      myStyleCustome(
                          "Official",
                          12.sp,
                          currentTab == 2 ? colorPrimary : colorSecondary,
                          FontWeight.w500),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentScreen = UserSalaryInformationPage();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage("images/payroll2.png"),
                        height: 25.h,
                        width: 25.w,
                        color: currentTab == 3 ? colorPrimary : colorSecondary,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      myStyleCustome(
                          "Salary",
                          12.sp,
                          currentTab == 3 ? colorPrimary : colorSecondary,
                          FontWeight.w500),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentScreen = UserRefererInformationPage();
                      currentTab = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage("images/others_icon.png"),
                        height: 25.h,
                        width: 25.w,
                        color: currentTab == 4 ? colorPrimary : colorSecondary,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      myStyleCustome(
                          "Referer",
                          12.sp,
                          currentTab == 4 ? colorPrimary : colorSecondary,
                          FontWeight.w500),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
