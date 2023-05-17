import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:collection/collection.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/employee/model/active_employee.dart';
import 'package:jibika_plexus_hrmm/views/user/user_nav_main/userinfo_navmain_page.dart';

import '../../../../../../../global/widgets/custom_expansion_tile.dart';
import '../utils/popup_modal.dart';

class EmployeeListPage extends StatefulWidget {
  EmployeeListPage({super.key});

  @override
  State<EmployeeListPage> createState() => _EmployeeListPageState();
}

class _EmployeeListPageState extends State<EmployeeListPage> {
  var _dx;

  var _dy;

  int? selectedActive;
  int? selectedInactive;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.add_circle_outline,
            size: 40.sp,
            color: colorPrimary,
          ),
        ),
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/employee_backgound.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // GestureDetector(
                    //     onTap: (() => Get.back()),
                    //     child: const Icon(
                    //       Icons.arrow_back_ios,
                    //       color: colorPrimary,
                    //       size: 30,
                    //     )),
                    SizedBox(
                      width: 53.h,
                    ),
                    myStylesWhite18(
                        "Employee List", FontWeight.w600, colorPrimary),
                    GestureDetector(
                        child: const Icon(
                      Icons.filter_alt_outlined,
                      color: colorPrimary,
                      size: 30,
                    )),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  height: 42.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.transparent,
                            blurRadius: 70,
                            offset: Offset(0, 10))
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          onChanged: ((value) => {}),
                          style: GoogleFonts.roboto(
                              color: const Color(0xff747775),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                          decoration: InputDecoration(
                            hintText: 'Search Here',
                            contentPadding: EdgeInsets.only(bottom: 5.h),
                            hintStyle: GoogleFonts.roboto(
                                color: const Color(0xff747775),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 22.sp,
                        color: const Color(0xff747775),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 21.h,
                ),
                Container(
                  height: 40.h,
                  child: TabBar(
                      labelColor: colorPrimary,
                      labelStyle: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: colorPrimary),
                      unselectedLabelColor: colorPrimary,
                      unselectedLabelStyle: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: colorPrimary),
                      indicator: BoxDecoration(
                          color: tabBarColor,
                          borderRadius: BorderRadius.circular(15)),
                      tabs: const [
                        Tab(
                          text: "Active (4)",
                        ),
                        Tab(
                          text: "Inactive (4)",
                        )
                      ]),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Expanded(
                  child: TabBarView(children: [
                    // ListView.builder(
                    //     padding: const EdgeInsets.only(),
                    //     itemCount: activeEmployeeInfo.length,
                    //     itemBuilder: (context, index) {
                    //       return Container(
                    //         margin: EdgeInsets.symmetric(vertical: 12.h),
                    //         padding: EdgeInsets.symmetric(
                    //             horizontal: 10.w, vertical: 5.h),
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(10),
                    //           color: colorSecondary.withOpacity(.13),
                    //           border: Border.all(color: colorSecondary),
                    //         ),
                    //         child: Row(
                    //           children: [
                    //             Column(
                    //               mainAxisAlignment: MainAxisAlignment.center,
                    //               children: [
                    //                 Image.asset(
                    //                   activeEmployeeInfo[index]
                    //                       .imageEmployee
                    //                       .toString(),
                    //                   height: 35.h,
                    //                   width: 35.w,
                    //                 ),
                    //                 SizedBox(
                    //                   height: 3.h,
                    //                 ),
                    //                 myStyleCustome(
                    //                     activeEmployeeInfo[index]
                    //                         .year
                    //                         .toString(),
                    //                     10,
                    //                     textcolorAsss,
                    //                     FontWeight.w600),
                    //               ],
                    //             ),
                    //             SizedBox(
                    //               width: 10.w,
                    //             ),
                    //             Column(
                    //               crossAxisAlignment: CrossAxisAlignment.start,
                    //               children: [
                    //                 myStylesText14(
                    //                     activeEmployeeInfo[index]
                    //                         .nameEmployee
                    //                         .toString(),
                    //                     colorPrimary,
                    //                     FontWeight.w700),
                    //                 SizedBox(
                    //                   height: 4.h,
                    //                 ),
                    //                 myStylesText12(
                    //                     activeEmployeeInfo[index]
                    //                         .designationEmployee
                    //                         .toString(),
                    //                     FontWeight.w600,
                    //                     colorPrimary),
                    //                 SizedBox(
                    //                   height: 4.h,
                    //                 ),
                    //                 Row(
                    //                   children: [
                    //                     myStyleCustome(
                    //                         activeEmployeeInfo[index]
                    //                             .dateDOJEmployee
                    //                             .toString(),
                    //                         10,
                    //                         textcolorAsss,
                    //                         FontWeight.w600),
                    //                     const Text(" | "),
                    //                     myStyleCustome(
                    //                         activeEmployeeInfo[index]
                    //                             .grossSalaryEmployee
                    //                             .toString(),
                    //                         10,
                    //                         textcolorAsss,
                    //                         FontWeight.w600),
                    //                   ],
                    //                 )
                    //               ],
                    //             ),
                    //             Expanded(
                    //                 child: Center(
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(5.0),
                    //                 child: GestureDetector(
                    //                   onTapDown: (details) {
                    //                     _dx = details.globalPosition.dx;
                    //                     _dy = details.globalPosition.dy;
                    //                   },
                    //                   onTap: () {
                    //                     showDialog(
                    //                         context: context,
                    //                         builder: (context) =>
                    //                             PopupModal(dx: _dx!, dy: _dy!));
                    //                   },
                    //                   child: Image(
                    //                     image: const AssetImage(
                    //                       "images/stroke_icon.png",
                    //                     ),
                    //                     width: 35.w,
                    //                     height: 25.h,
                    //                   ),
                    //                 ),
                    //               ),
                    //             ))
                    //           ],
                    //         ),
                    //       );
                    //     }),

                    // SingleChildScrollView(
                    //     child: ExpansionPanelList.radio(
                    //   elevation: 0,
                    //   dividerColor: Colors.transparent,
                    //   expandedHeaderPadding: const EdgeInsets.all(0),
                    //   animationDuration: const Duration(milliseconds: 600),
                    //   children: activeEmployeeInfo
                    //       .mapIndexed(
                    //         (index, e) => ExpansionPanelRadio(
                    //           backgroundColor: Colors.red,
                    //           value: e.nameEmployee!,
                    //           canTapOnHeader: true,
                    //           headerBuilder: (_, isExpanded) => Container(
                    //             margin: EdgeInsets.symmetric(vertical: 12.h),
                    //             padding: EdgeInsets.symmetric(
                    //                 horizontal: 10.w, vertical: 5.h),
                    //             decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(10),
                    //               // color: colorSecondary.withOpacity(.13),
                    //               color: Colors.blue,
                    //               border: Border.all(color: colorSecondary),
                    //             ),
                    //             child: Row(
                    //               children: [
                    //                 Column(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.center,
                    //                   children: [
                    //                     Image.asset(
                    //                       activeEmployeeInfo[index]
                    //                           .imageEmployee
                    //                           .toString(),
                    //                       height: 35.h,
                    //                       width: 35.w,
                    //                     ),
                    //                     SizedBox(
                    //                       height: 3.h,
                    //                     ),
                    //                     myStyleCustome(
                    //                         activeEmployeeInfo[index]
                    //                             .year
                    //                             .toString(),
                    //                         10,
                    //                         textcolorAsss,
                    //                         FontWeight.w600),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   width: 10.w,
                    //                 ),
                    //                 Column(
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     myStylesText14(
                    //                         activeEmployeeInfo[index]
                    //                             .nameEmployee
                    //                             .toString(),
                    //                         colorPrimary,
                    //                         FontWeight.w700),
                    //                     SizedBox(
                    //                       height: 4.h,
                    //                     ),
                    //                     myStylesText12(
                    //                         activeEmployeeInfo[index]
                    //                             .designationEmployee
                    //                             .toString(),
                    //                         FontWeight.w600,
                    //                         colorPrimary),
                    //                     SizedBox(
                    //                       height: 4.h,
                    //                     ),
                    //                     Row(
                    //                       children: [
                    //                         myStyleCustome(
                    //                             activeEmployeeInfo[index]
                    //                                 .dateDOJEmployee
                    //                                 .toString(),
                    //                             10,
                    //                             textcolorAsss,
                    //                             FontWeight.w600),
                    //                         const Text(" | "),
                    //                         myStyleCustome(
                    //                             activeEmployeeInfo[index]
                    //                                 .grossSalaryEmployee
                    //                                 .toString(),
                    //                             10,
                    //                             textcolorAsss,
                    //                             FontWeight.w600),
                    //                       ],
                    //                     )
                    //                   ],
                    //                 ),
                    //                 Expanded(
                    //                     child: Center(
                    //                   child: Padding(
                    //                     padding: const EdgeInsets.all(5.0),
                    //                     child: GestureDetector(
                    //                       onTapDown: (details) {
                    //                         _dx = details.globalPosition.dx;
                    //                         _dy = details.globalPosition.dy;
                    //                       },
                    //                       onTap: () {
                    //                         showDialog(
                    //                             context: context,
                    //                             builder: (context) =>
                    //                                 PopupModal(
                    //                                     dx: _dx!, dy: _dy!));
                    //                       },
                    //                       child: Image(
                    //                         image: const AssetImage(
                    //                           "images/stroke_icon.png",
                    //                         ),
                    //                         width: 35.w,
                    //                         height: 25.h,
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ))
                    //               ],
                    //             ),
                    //           ),
                    //           body: Text(
                    //             e.designationEmployee!,
                    //             style: const TextStyle(
                    //               fontSize: 16.0,
                    //               fontWeight: FontWeight.w500,
                    //             ),
                    //           ),
                    //         ),
                    //       )
                    //       .toList(),
                    // )),

                    ListView.builder(
                        key: Key('builderActive ${selectedActive.toString()}'),
                        padding: EdgeInsets.only(),
                        itemCount: activeEmployeeInfo.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 12.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.w, vertical: 0.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colorSecondary.withOpacity(.13),
                              border: Border.all(color: colorSecondary),
                            ),
                            child: CustomExpansionTile(
                              key: Key(index.toString()), //attention
                              initiallyExpanded: index == selectedActive,
                              backgroundColor: Colors.transparent,
                              iconColor: colorPrimary,
                              collapsedIconColor: colorSecondary,
                              onExpansionChanged: (newState) {
                                if (newState) {
                                  setState(() {
                                    selectedActive = index;
                                  });
                                } else {
                                  setState(() {
                                    selectedActive = -1;
                                  });
                                }
                              },

                              title: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        activeEmployeeInfo[index]
                                            .imageEmployee
                                            .toString(),
                                        height: 35.h,
                                        width: 35.w,
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      myStyleCustome(
                                          activeEmployeeInfo[index]
                                              .year
                                              .toString(),
                                          10,
                                          textcolorAsss,
                                          FontWeight.w600),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: Get.width * .5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            myStylesText14(
                                                activeEmployeeInfo[index]
                                                    .nameEmployee
                                                    .toString(),
                                                colorPrimary,
                                                FontWeight.w700),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            myStylesText12(
                                                activeEmployeeInfo[index]
                                                    .designationEmployee
                                                    .toString(),
                                                FontWeight.w600,
                                                colorPrimary),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Row(
                                              children: [
                                                myStyleCustome(
                                                    activeEmployeeInfo[index]
                                                        .dateDOJEmployee
                                                        .toString(),
                                                    10,
                                                    textcolorAsss,
                                                    FontWeight.w600),
                                                const Text(
                                                  " | ",
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                                myStyleCustome(
                                                    activeEmployeeInfo[index]
                                                        .grossSalaryEmployee
                                                        .toString(),
                                                    10,
                                                    textcolorAsss,
                                                    FontWeight.w600),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                      child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: GestureDetector(
                                        onTapDown: (details) {
                                          _dx = details.globalPosition.dx;
                                          _dy = details.globalPosition.dy;
                                        },
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) => PopupModal(
                                                  dx: _dx!, dy: _dy!));
                                        },
                                        child: Image(
                                          image: const AssetImage(
                                            "images/stroke_icon.png",
                                          ),
                                          width: 35.w,
                                          height: 25.h,
                                        ),
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                              children: [
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/three_person.png",
                                          title: "Details"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/late_time.png",
                                          title: "Present"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage:
                                              "images/dashboard_nav_leave_icon.png",
                                          title: "Leave"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage:
                                              "images/tracking_icon.png",
                                          title: "Tracking"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/payroll.png",
                                          title: "Payroll"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/late_time.png",
                                          title: "Active"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          );
                        }),

                    ListView.builder(
                        padding: const EdgeInsets.only(),
                        itemCount: activeEmployeeInfo.length,
                        key: Key(
                            'builderInactive ${selectedInactive.toString()}'),
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 12.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.w, vertical: 0.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: textcolorAsss.withOpacity(.13),
                              border: Border.all(color: colorRed),
                            ),
                            child: CustomExpansionTile(
                              key: Key(index.toString()),
                              initiallyExpanded: index == selectedInactive,
                              backgroundColor: Colors.transparent,
                              iconColor: colorPrimary,
                              collapsedIconColor: colorSecondary,
                              onExpansionChanged: (newStatee) {
                                if (newStatee) {
                                  setState(() {
                                    selectedInactive = index;
                                  });
                                } else {
                                  setState(() {
                                    selectedInactive = -1;
                                  });
                                }
                              },
                              title: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        activeEmployeeInfo[index]
                                            .imageEmployee
                                            .toString(),
                                        height: 35.h,
                                        width: 35.w,
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      myStyleCustome(
                                          activeEmployeeInfo[index]
                                              .year
                                              .toString(),
                                          10,
                                          textcolorAsss,
                                          FontWeight.w600),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: Get.width * .5,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            myStylesText14(
                                                activeEmployeeInfo[index]
                                                    .nameEmployee
                                                    .toString(),
                                                colorPrimary,
                                                FontWeight.w700),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            myStylesText12(
                                                activeEmployeeInfo[index]
                                                    .designationEmployee
                                                    .toString(),
                                                FontWeight.w600,
                                                colorPrimary),
                                            SizedBox(
                                              height: 4.h,
                                            ),
                                            Row(
                                              children: [
                                                myStyleCustome(
                                                    activeEmployeeInfo[index]
                                                        .dateDOJEmployee
                                                        .toString(),
                                                    10,
                                                    textcolorAsss,
                                                    FontWeight.w600),
                                                const Text("  |  "),
                                                myStyleCustome(
                                                    activeEmployeeInfo[index]
                                                        .grossSalaryEmployee
                                                        .toString(),
                                                    10,
                                                    textcolorAsss,
                                                    FontWeight.w600),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                      child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(3.sp),
                                      child: GestureDetector(
                                        onTapDown: (details) {
                                          _dx = details.globalPosition.dx;
                                          _dy = details.globalPosition.dy;
                                        },
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) => PopupModal(
                                                  dx: _dx!, dy: _dy!));
                                        },
                                        child: Image(
                                          image: const AssetImage(
                                            "images/stroke_icon.png",
                                          ),
                                          width: 35.w,
                                          height: 25.h,
                                        ),
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                              children: [
                                SizedBox(
                                  height: 15.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/three_person.png",
                                          title: "Details"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/late_time.png",
                                          title: "Present"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage:
                                              "images/dashboard_nav_leave_icon.png",
                                          title: "Leave"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage:
                                              "images/tracking_icon.png",
                                          title: "Tracking"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/payroll.png",
                                          title: "Payroll"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                    GestureDetector(
                                      child: const ExpantionBodyTile(
                                          assetImage: "images/late_time.png",
                                          title: "Inactive"),
                                      onTap: () {
                                        Get.back();
                                        Get.to(() =>
                                            const UserInfo_Nav_Main_Page());
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          );
                        }),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpantionBodyTile extends StatelessWidget {
  const ExpantionBodyTile({
    Key? key,
    required this.assetImage,
    required this.title,
  }) : super(key: key);

  final String? assetImage;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(assetImage!),
          color: colorPrimary,
          width: 25.sp,
          height: 25.sp,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: 20.sp,
        ),
        Text(title!,
            style: const TextStyle(color: colorPrimary, fontSize: 14),
            textAlign: TextAlign.center),
      ],
    );
  }
}
