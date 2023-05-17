import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/nav_dawer_admin/nav_dawer.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/deshboard/model/leavemodel.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/deshboard/model/salarymodel.dart';
import 'package:jibika_plexus_hrmm/views/admin/bottom_nav_new/nav_views/deshboard/utils/bar_chart.dart';

class DeshboardPage extends StatefulWidget {
  const DeshboardPage({super.key});

  @override
  State<DeshboardPage> createState() => _DeshboardPageState();
}

class _DeshboardPageState extends State<DeshboardPage> {
  int touchedIndex = -1;
  final dateController = TextEditingController();
  final dateLeaveController = TextEditingController();

  DateTime _dateTimeAttendance = DateTime.now();

  Future buildDatePickernew() {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220.h,
            child: CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                backgroundColor: textcolorWhite,
                minimumYear: 1950,
                maximumYear: 2100,
                onDateTimeChanged: (dateTimeAttendance) {
                  return setState(() {
                    setState(() {
                      dateController.text =
                          DateFormat("dd-MMM-yyyy").format(dateTimeAttendance);
                    });
                    _dateTimeAttendance = dateTimeAttendance;
                  });
                }),
          );
        });
  }

  DateTime _dateTimeLeave = DateTime.now();

  Future _showLeaveDate() {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220.h,
            child: CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                backgroundColor: textcolorWhite,
                minimumYear: 1950,
                maximumYear: 2100,
                onDateTimeChanged: (dateTimeLeave) {
                  return setState(() {
                    setState(() {
                      dateLeaveController.text =
                          DateFormat("dd-MMM-yyyy").format(dateTimeLeave);
                    });
                    _dateTimeLeave = dateTimeLeave;
                  });
                }),
          );
        });
  }

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: NavigationDawerAdmin(),
        // appBar: AppBar(
        //   flexibleSpace: const Image(
        //     image: AssetImage('images/appbar_image.jpeg'),
        //   ),
        //   actions: [
        //     Container(
        //       margin: EdgeInsets.all(
        //         12.h,
        //       ),
        //       width: 30.w,
        //       decoration: const BoxDecoration(color: textcolorWhite),
        //       child: Icon(
        //         Icons.notifications,
        //         size: 25.sp,
        //         color: textcolorBalck,
        //       ),
        //     )
        //   ],
        //   elevation: 0,
        //   iconTheme: IconThemeData(color: Colors.white),
        //   backgroundColor: Colors.transparent,
        // ),

        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Column(
              children: [
                Container(
                  height: 50.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/appbar_image.jpeg"),
                          fit: BoxFit.fitWidth)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            size: 25.sp,
                            color: textcolorWhite,
                          )),
                      Icon(
                        Icons.notifications,
                        size: 25.sp,
                        color: textcolorWhite,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    children: [
                      Container(
                        height: 165.h,
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.black12,
                                offset: Offset(2, 2))
                          ],
                        ),
                        child: Card(
                          color: const Color.fromARGB(247, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: SizedBox(
                                      height: 120.h,
                                      child: Stack(
                                        children: [
                                          PieChart(
                                            PieChartData(
                                                pieTouchData: PieTouchData(
                                                    touchCallback:
                                                        (FlTouchEvent event,
                                                            pieTouchResponse) {
                                                  setState(() {
                                                    if (!event
                                                            .isInterestedForInteractions ||
                                                        pieTouchResponse ==
                                                            null ||
                                                        pieTouchResponse
                                                                .touchedSection ==
                                                            null) {
                                                      touchedIndex = -1;
                                                      return;
                                                    }
                                                    touchedIndex =
                                                        pieTouchResponse
                                                            .touchedSection!
                                                            .touchedSectionIndex;
                                                  });
                                                }),
                                                borderData: FlBorderData(
                                                  show: false,
                                                ),
                                                sectionsSpace: 0,
                                                centerSpaceRadius: 40,
                                                sections: showingSections()),
                                          ),
                                          Positioned(
                                              child: Center(
                                                  child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              myInterStyleCustome(
                                                  "10",
                                                  8,
                                                  textcolorBalck,
                                                  FontWeight.w600),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              myInterStyleCustome(
                                                  "Total Manpower",
                                                  8,
                                                  textcolorBalck,
                                                  FontWeight.w400),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              myInterStyleCustome(
                                                  "BDT 45000",
                                                  8,
                                                  textcolorBalck,
                                                  FontWeight.w600),
                                              SizedBox(
                                                height: 1.h,
                                              ),
                                              myInterStyleCustome(
                                                  "Achieved Syalar",
                                                  8,
                                                  textcolorBalck,
                                                  FontWeight.w400),
                                            ],
                                          )))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Daily Attendance",
                                        style: GoogleFonts.inter(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w700,
                                            color: textcolorBalck),
                                      ),
                                      SizedBox(
                                        height: 4.h,
                                      ),
                                      Container(
                                        width: 140.w,
                                        height: 30.h,
                                        padding: EdgeInsets.only(
                                          left: 10,
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: colorSecondary)),
                                        child: Center(
                                          child: TextFormField(
                                            style: GoogleFonts.roboto(
                                                color: textcolorBalck,
                                                fontSize: 13.sp,
                                                textStyle: const TextStyle(
                                                    color: textcolorBalck),
                                                fontWeight: FontWeight.w400),
                                            readOnly: true,
                                            controller: dateController,
                                            onTap: () {
                                              buildDatePickernew();
                                            },
                                            decoration: InputDecoration(
                                              suffixIcon: Icon(
                                                Icons.date_range,
                                                size: 19.sp,
                                                color: Color(0xff0BA411),
                                              ),
                                              hintStyle: GoogleFonts.roboto(
                                                  color: textcolorBalck,
                                                  fontSize: 13.sp,
                                                  textStyle: TextStyle(
                                                      color: textcolorBalck),
                                                  fontWeight: FontWeight.w400),
                                              hintText: DateFormat(
                                                      "dd-MMM-yyyy")
                                                  .format(_dateTimeAttendance),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 14.h,
                                            width: 6.w,
                                            color: Color(0xff7CB83B),
                                          ),
                                          SizedBox(
                                            width: 12.h,
                                          ),
                                          myInterStyleCustome(
                                              "Present      45",
                                              12.sp,
                                              Color(0xff7CB83B),
                                              FontWeight.w500),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 14.h,
                                            width: 6.w,
                                            color: Color(0xffEC4F4F),
                                          ),
                                          SizedBox(
                                            width: 12.h,
                                          ),
                                          myInterStyleCustome(
                                              "Absent        10",
                                              12.sp,
                                              Color(0xffEC4F4F),
                                              FontWeight.w500),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 14.h,
                                            width: 6.w,
                                            color: Color(0xffFFD634),
                                          ),
                                          SizedBox(
                                            width: 12.h,
                                          ),
                                          myInterStyleCustome(
                                              'Leave         40',
                                              12.sp,
                                              Color(0xffFFD634),
                                              FontWeight.w500),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 14.h,
                                            width: 6.w,
                                            color: Color(0xff356966),
                                          ),
                                          SizedBox(
                                            width: 12.h,
                                          ),
                                          myInterStyleCustome(
                                              'Holiday       10 ',
                                              12.sp,
                                              Color(0xff356966),
                                              FontWeight.w500),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      BarChartWidget(),
                      Container(
                        height: 160.h,
                        margin: EdgeInsets.symmetric(vertical: 2.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.black12,
                                offset: Offset(2, 2))
                          ],
                        ),
                        child: Card(
                          color: Color.fromARGB(247, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.w, left: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    myInterStyleCustome("Today’s Leave -  10",
                                        13.sp, textcolorBalck, FontWeight.w700),
                                    Container(
                                      width: 140.w,
                                      height: 30.h,
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: colorSecondary)),
                                      child: TextFormField(
                                        readOnly: true,
                                        controller: dateLeaveController,
                                        onTap: () {
                                          _showLeaveDate();
                                        },
                                        style: GoogleFonts.roboto(
                                            color: textcolorBalck,
                                            fontSize: 13.sp,
                                            textStyle: const TextStyle(
                                                color: textcolorBalck),
                                            fontWeight: FontWeight.w400),
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.date_range,
                                            size: 19.sp,
                                            color: Color(0xff0BA411),
                                          ),
                                          hintStyle: GoogleFonts.roboto(
                                              color: textcolorBalck,
                                              fontSize: 13.sp,
                                              textStyle: const TextStyle(
                                                  color: textcolorBalck),
                                              fontWeight: FontWeight.w400),
                                          hintText: DateFormat("dd-MMM-yyyy")
                                              .format(_dateTimeLeave),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              SizedBox(
                                height: 100.h,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: leaveDataInfo.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                          margin: const EdgeInsets.all(5),
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: textcolorWhite,
                                            boxShadow: const [
                                              BoxShadow(
                                                  blurRadius: 3,
                                                  color: Colors.black45,
                                                  offset: Offset(2, 2))
                                            ],
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 60.w,
                                                    decoration:
                                                        const BoxDecoration(
                                                            border: Border(
                                                      right: BorderSide(
                                                        //
                                                        color:
                                                            Color(0xff74777580),
                                                        width: 1.0,
                                                      ),
                                                    )),
                                                    child: Row(
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(40),
                                                          child: Image(
                                                            image: AssetImage(
                                                              leaveDataInfo[
                                                                      index]
                                                                  .image
                                                                  .toString(),
                                                            ),
                                                            height: 40.h,
                                                            width: 40.w,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 5.h,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 4.w,
                                                  ),
                                                  Column(
                                                    children: [
                                                      myInterStyleCustome(
                                                          leaveDataInfo[index]
                                                              .classs
                                                              .toString(),
                                                          12.sp,
                                                          colorPrimary,
                                                          FontWeight.w600),
                                                      SizedBox(
                                                        height: 3.h,
                                                      ),
                                                      myInterStyleCustome(
                                                          leaveDataInfo[index]
                                                              .firstDate
                                                              .toString(),
                                                          10.sp,
                                                          Color(0xff325A20),
                                                          FontWeight.w400),
                                                      SizedBox(
                                                        height: 1.h,
                                                      ),
                                                      myInterStyleCustome(
                                                          "to",
                                                          10.sp,
                                                          Color(0xff325A20),
                                                          FontWeight.w400),
                                                      SizedBox(
                                                        height: 1.h,
                                                      ),
                                                      myInterStyleCustome(
                                                          leaveDataInfo[index]
                                                              .lastDate
                                                              .toString(),
                                                          10.sp,
                                                          Color(0xff325A20),
                                                          FontWeight.w400),
                                                      SizedBox(
                                                        height: 1.h,
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 2),
                                                child: Text(
                                                    leaveDataInfo[index]
                                                        .name
                                                        .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: GoogleFonts.inter(
                                                      fontSize: 12.sp,
                                                      color: colorPrimary,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    )),
                                              ),
                                            ],
                                          ));
                                    }),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CarouselSlider(
                        items: [
                          Container(
                            height: 120.h,
                            width: Get.width,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 5.h),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(247, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "images/Jibika_logo.png",
                                  ),
                                  fit: BoxFit.fitWidth),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.black12,
                                    offset: Offset(2, 2))
                              ],
                            ),
                          ),
                          Container(
                            height: 120.h,
                            width: Get.width,
                            margin: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 5.h),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(247, 255, 255, 255),
                              borderRadius: BorderRadius.circular(15),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "images/qr_code.jpg",
                                  ),
                                  fit: BoxFit.fitWidth),
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.black12,
                                    offset: Offset(2, 2))
                              ],
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 120.h,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                      Container(
                        height: 130.h,
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.black12,
                                offset: Offset(2, 2))
                          ],
                        ),
                        child: Card(
                          color: Color.fromARGB(247, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 10),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: salaryModelInfo.length,
                                      padding: EdgeInsets.all(0),
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 130.w,
                                          height: 50.h,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5.w, vertical: 5.h),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: salaryModelInfo[index].color,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 17.h,
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      salaryModelInfo[index]
                                                          .image
                                                          .toString(),
                                                      height: 28.h,
                                                      width: 28.h,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    myStyleCustome(
                                                        salaryModelInfo[index]
                                                            .hourse
                                                            .toString(),
                                                        15.sp,
                                                        colorPrimary,
                                                        FontWeight.w600),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 7.h,
                                                ),
                                                myStylesText12(
                                                    salaryModelInfo[index]
                                                        .tittle
                                                        .toString(),
                                                    FontWeight.w300,
                                                    textcolorBalck),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 15.0 : 12.0;
      final radius = isTouched ? 20.0 : 15.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xffACD184),
            value: 40,
            title: '',
            radius: radius,
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xffFFD634),
            value: 10,
            title: '',
            radius: radius,
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xffEC4f4f),
            value: 40,
            title: '',
            radius: radius,
          );
        case 3:
          return PieChartSectionData(
            color: const Color(0xff356966),
            value: 10,
            title: '',
            radius: radius,
          );
        default:
          throw Error();
      }
    });
  }
}
