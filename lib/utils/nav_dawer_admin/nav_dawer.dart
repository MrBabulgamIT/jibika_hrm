import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../views/common/auth/login/views/login_page.dart';

class NavigationDawerAdmin extends StatefulWidget {
  const NavigationDawerAdmin({super.key});

  @override
  State<NavigationDawerAdmin> createState() => _NavigationDawerAdminState();
}

class _NavigationDawerAdminState extends State<NavigationDawerAdmin> {
  int? selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: textcolorWhite,
      width: Get.width / 1.3.w,
      child: ListView(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "images/male.png",
                  height: 120.h,
                  width: 120.w,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              myStyleCustome(
                  "Md.Azizul Rahman", 18, colorPrimary, FontWeight.w700),
              SizedBox(
                height: 5.h,
              ),
              myStyleCustome(
                  "Software Engineer", 15, colorPrimary, FontWeight.w400),
              SizedBox(
                height: 5.h,
              ),
              myStyleCustome(
                  "Flutter Devoloper", 12, colorPrimary, FontWeight.w400),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.photo,
                      color: selectIndex == 1 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 1
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Short Profile with photo",
                  selectIndex == 1 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 1;
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.calendar_month,
                      color: selectIndex == 2 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 2
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Attendance Viewer",
                  selectIndex == 2 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 2;
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.time_to_leave,
                      color: selectIndex == 3 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 3
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Leave Viewer",
                  selectIndex == 3 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 3;
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.person_pin_outlined,
                      color: selectIndex == 20 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 20
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Company Profile",
                  selectIndex == 20 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 20;
                    //  Get.to(CompanyProfilePage());
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    "images/payroll.png",
                    color: selectIndex == 4 ? colorPrimary : colorSecondary,
                    height: 20.h,
                    width: 20.w,
                  ),
                  // child: Icon(
                  //   Icons.photo,
                  //   color: selectIndex == 4 ? colorPrimary : colorSecondary,
                  // ),
                ),
                tileColor: selectIndex == 4
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Payroll Process",
                  selectIndex == 4 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 4;
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.gps_fixed_outlined,
                      color: selectIndex == 5 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 5
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Emp GPS Viewer",
                  selectIndex == 5 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 5;
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ExpansionTile(
                title: myStylesNavDawerText(
                  "Payroll Manager",
                  colorSecondary,
                ),
                backgroundColor: textcolorWhite,
                collapsedBackgroundColor: textcolorWhite,
                leading: Padding(
                    padding: EdgeInsets.all(8.sp),
                    child: const Icon(
                      Icons.monetization_on,
                      color: colorSecondary,
                    )),
                childrenPadding: EdgeInsets.only(left: 30.h),
                children: [
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.manage_accounts_rounded,
                          color:
                              selectIndex == 7 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 7
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Deduction Manager ",
                      selectIndex == 7 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 7;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.perm_contact_calendar,
                          color:
                              selectIndex == 8 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 8
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Allowance Manager ",
                      selectIndex == 8 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 8;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.local_convenience_store,
                          color:
                              selectIndex == 9 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 9
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Conveyance Manager",
                      selectIndex == 9 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 9;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.donut_large,
                          color:
                              selectIndex == 10 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 10
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Loan Manager",
                      selectIndex == 10 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 10;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.area_chart,
                          color:
                              selectIndex == 11 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 11
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Arrear Manager",
                      selectIndex == 11 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 11;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.import_contacts,
                          color:
                              selectIndex == 12 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 12
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Commission or Incentive Manager",
                      selectIndex == 12 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 12;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.train,
                          color:
                              selectIndex == 13 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 13
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Stationary Manager ",
                      selectIndex == 13 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 13;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                  ListTile(
                    leading: Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.report,
                          color:
                              selectIndex == 14 ? colorPrimary : colorSecondary,
                        )),
                    tileColor: selectIndex == 14
                        ? Color.fromARGB(193, 238, 232, 232)
                        : textcolorWhite,
                    title: myStylesNavDawerText(
                      "Report Manager",
                      selectIndex == 14 ? colorPrimary : colorSecondary,
                    ),
                    onTap: () {
                      setState(() {
                        selectIndex = 14;
                      });
                    },
                  ),
                  Divider(
                      height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
                ],
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.settings,
                      color: selectIndex == 15 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 15
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Settings",
                  selectIndex == 15 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 15;
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.filter_tilt_shift,
                      color: selectIndex == 16 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 16
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Shift Plan ",
                  selectIndex == 16 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    selectIndex = 16;
                    //  Get.to(ShiftPlanListPage());
                  });
                },
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.privacy_tip,
                      color: selectIndex == 17 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 17
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Privacy policy",
                  selectIndex == 17 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    //  Get.to(PrivacyPolicy());
                    selectIndex = 17;
                  });
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.sticky_note_2_outlined,
                      color: selectIndex == 18 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 18
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Terms & Conditions",
                  selectIndex == 18 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    //   Get.to(TermsAndConditions());
                    selectIndex = 18;
                  });
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.warning_outlined,
                      color: selectIndex == 19 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 19
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Disclaimer",
                  selectIndex == 19 ? colorPrimary : colorSecondary,
                ),
                onTap: () {
                  setState(() {
                    //  Get.to(Disclaimer());
                    selectIndex = 19;
                  });
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(height: 2.h, color: Color.fromARGB(193, 175, 169, 169)),
              ListTile(
                leading: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.logout_outlined,
                      color: selectIndex == 21 ? colorPrimary : colorSecondary,
                    )),
                tileColor: selectIndex == 21
                    ? Color.fromARGB(193, 238, 232, 232)
                    : textcolorWhite,
                title: myStylesNavDawerText(
                  "Logout",
                  selectIndex == 21 ? colorPrimary : colorSecondary,
                ),
                onTap: () async {
                  setState(() {
                    selectIndex = 21;
                  });
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  await sharedPreferences.setString('token', "");
                  sharedPreferences.clear();

                  Get.offAll(() => LoginPage());
                },
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
