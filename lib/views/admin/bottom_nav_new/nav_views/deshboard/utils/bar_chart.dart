import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';

class BarChartWidget extends StatefulWidget {
  const BarChartWidget({super.key});

  @override
  State<BarChartWidget> createState() => _BarChartWidgetState();
}

class Present {
  String percent;
  int month;
  Present(this.percent, this.month);
}

class _BarChartWidgetState extends State<BarChartWidget> {
  List<charts.Series<Present, String>>? _chartData;
  void makeData() {
    _chartData = <charts.Series<Present, String>>[];
    final random = Random();

    final desktopSalesData = [
      Present('0', 30),
      Present('1', 5),
      Present('2', 45),
      Present('3', 15),
      Present('4', 24),
      Present('5', 14),
      Present('6', 40),
      Present('7', 24),
      Present('8', 12),
      Present('9', 12),
      Present('10', 12),
    ];

    final mobileSalesData = [
      Present('0', 14),
      Present('1', 10),
      Present('2', 36),
      Present('3', 15),
      Present('4', 20),
      Present('5', 35),
      Present('6', 30),
      Present('7', 15),
      Present('8', 12),
      Present('9', 15),
      Present('10', 14),
    ];

    _chartData!.add(charts.Series(
      id: 'Sales',
      data: desktopSalesData,
      displayName: 'Sales',
      colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      domainFn: (Present present, __) => present.percent,
      measureFn: (Present present, __) => present.month,
    ));
    _chartData!.add(charts.Series(
      id: 'Sales',
      data: mobileSalesData,
      displayName: 'Sales',
      colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      domainFn: (Present present, __) => present.percent,
      measureFn: (Present present, __) => present.month,
    ));
  }

  final dateControllerPercent = TextEditingController();

  DateTime _dateTimePerent = DateTime.now();

  Future _showMonthlyAttendanceDate() {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 150.h,
            child: CupertinoDatePicker(
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                backgroundColor: textcolorWhite,
                minimumYear: 1950,
                maximumYear: 2100,
                onDateTimeChanged: (dateTimeAttendance) {
                  return setState(() {
                    setState(() {
                      dateControllerPercent.text =
                          DateFormat("MMM-yyyy").format(dateTimeAttendance);
                    });
                    _dateTimePerent = dateTimeAttendance;
                  });
                }),
          );
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    makeData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  blurRadius: 3, color: Colors.black12, offset: Offset(2, 2))
            ],
          ),
          child: Card(
            color: Color.fromARGB(247, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 13.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myInterStyleCustome("Monthly Attendance", 13.sp,
                            textcolorBalck, FontWeight.w700),
                        Container(
                          width: 130.w,
                          height: 30.h,
                          padding: const EdgeInsets.only(left: 10, top: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: colorSecondary)),
                          child: TextFormField(
                            style: GoogleFonts.roboto(
                                color: textcolorBalck,
                                fontSize: 15.sp,
                                textStyle:
                                    const TextStyle(color: textcolorBalck),
                                fontWeight: FontWeight.w400),
                            controller: dateControllerPercent,
                            onTap: () {
                              _showMonthlyAttendanceDate();
                            },
                            readOnly: true,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.date_range,
                                size: 19.sp,
                                color: Color(0xff0BA411),
                              ),
                              hintStyle: GoogleFonts.roboto(
                                  color: textcolorBalck,
                                  fontSize: 13.sp,
                                  textStyle:
                                      const TextStyle(color: textcolorBalck),
                                  fontWeight: FontWeight.w400),
                              hintText: DateFormat("MMM-yyyy")
                                  .format(_dateTimePerent),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: charts.BarChart(
                      _chartData!,
                      vertical: true,
                      animate: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
