import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/attaendance/views/attaendance_nav.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/deshboard/views/deshboard.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/employee/views/employee_list.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/leave/views/leave_nav.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/tracker/views/tracker_nav.dart';

class BottomNavMainPage extends StatefulWidget {
  const BottomNavMainPage({super.key});

  @override
  State<BottomNavMainPage> createState() => _BottomNavMainPageState();
}

class _BottomNavMainPageState extends State<BottomNavMainPage> {
  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const DeshboardPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: SizedBox(
        height: 50.h,
        width: 50.w,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            setState(() {
              currentScreen = EmployeeListPage();
              currentTab = 2;
            });
          },
          child: Image(
            image: const AssetImage("images/three_person.png"),
            color: currentTab == 2 ? colorPrimary : colorSecondary,
            width: 50.w,
            fit: BoxFit.fill,
            height: 50.h,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //   drawerScrimColor: Colors.transparent,
      bottomNavigationBar: BottomAppBar(
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60.h,
          decoration: const BoxDecoration(
              border:
                  Border(top: BorderSide(color: Colors.transparent, width: 2))),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MaterialButton(
                  minWidth: 50.h,
                  onPressed: () {
                    setState(() {
                      currentScreen = const DeshboardPage();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: currentTab == 0
                            ? const AssetImage(
                                "images/home_icon_dashboard2.png")
                            : const AssetImage(
                                "images/home_icon_dashboard.png"),
                        color: currentTab == 0 ? colorPrimary : colorSecondary,
                        width: 30.sp,
                        height: 30.sp,
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      myStyleCustome(
                          "Home",
                          11,
                          currentTab == 0 ? colorPrimary : colorSecondary,
                          FontWeight.w400)
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 50.h,
                  onPressed: () {
                    setState(() {
                      currentScreen = const AttendancePageAdminNav();
                      currentTab = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(
                          image: currentTab == 1
                              ? const AssetImage("images/late_time2.png")
                              : const AssetImage("images/late_time.png"),
                          color:
                              currentTab == 1 ? colorPrimary : colorSecondary,
                          width: 30.sp,
                          height: 30.sp,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        myStyleCustome(
                            "Present",
                            11,
                            currentTab == 1 ? colorPrimary : colorSecondary,
                            FontWeight.w400)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.w, right: 10.h),
                  child: myStyleCustome(
                      "",
                      11,
                      currentTab == 2 ? colorPrimary : colorSecondary,
                      FontWeight.w400),
                ),
                MaterialButton(
                  minWidth: 50.h,
                  onPressed: () {
                    setState(() {
                      currentScreen = const LeavePageAdminNav();
                      currentTab = 3;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(
                          image: currentTab == 3
                              ? const AssetImage(
                                  "images/dashboard_nav_leave_icon2.png")
                              : const AssetImage(
                                  "images/dashboard_nav_leave_icon.png"),
                          color:
                              currentTab == 3 ? colorPrimary : colorSecondary,
                          width: 28.sp,
                          height: 28.sp,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        myStyleCustome(
                            "Leave",
                            11,
                            currentTab == 3 ? colorPrimary : colorSecondary,
                            FontWeight.w400)
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 50.h,
                  onPressed: () {
                    setState(() {
                      currentScreen = const TrackerPageAdminNav();
                      currentTab = 4;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image(
                          image: currentTab == 4
                              ? const AssetImage("images/tracking_icon2.png")
                              : const AssetImage("images/tracking_icon.png"),
                          color:
                              currentTab == 4 ? colorPrimary : colorSecondary,
                          width: 35.sp,
                          height: 30.sp,
                          fit: BoxFit.fill,
                        ),
                        // Icon(
                        //   Icons.location_on,
                        //   size: 25.sp,
                        //   color:
                        //       currentTab == 4 ? colorPrimary : colorSecondary,
                        // ),
                        SizedBox(
                          height: 3.h,
                        ),
                        myStyleCustome(
                            "Tracker",
                            11,
                            currentTab == 4 ? colorPrimary : colorSecondary,
                            FontWeight.w400)
                      ],
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
