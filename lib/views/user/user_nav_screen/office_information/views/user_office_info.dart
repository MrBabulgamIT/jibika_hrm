import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

class UserOfficialInformationPage extends StatefulWidget {
  const UserOfficialInformationPage({super.key});

  @override
  State<UserOfficialInformationPage> createState() =>
      _UserOfficialInformationPageState();
}

class _UserOfficialInformationPageState
    extends State<UserOfficialInformationPage> {
  final unitController = TextEditingController();
  final departmentController = TextEditingController();
  final designationController = TextEditingController();
  final selectionController = TextEditingController();
  final workStationController = TextEditingController();
  final joningDateController = TextEditingController();
  final inactiveDateController = TextEditingController();
  final rosterTypeController = TextEditingController();
  final shiftPlanController = TextEditingController();

  DateTime _dateInactiveTime = DateTime.now();

  Future _showInactiveDate() {
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
                onDateTimeChanged: (dateTimeInactive) {
                  return setState(() {
                    setState(() {
                      inactiveDateController.text =
                          DateFormat("dd-MMM-yyyy").format(dateTimeInactive);
                    });
                    _dateInactiveTime = dateTimeInactive;
                  });
                }),
          );
        });
  }

  String dropdownValueEmployeeSatus = 'Parament';

  var itemsEmployeeSatus = [
    'Parament',
    'Remote',
    'Others',
  ];
  String dropdownValueFirstWeekend = 'Friday';

  var itemsFirstWeekend = ['Friday', 'Saturday', 'Sunday', 'Monday'];

  String dropdownValueSecondWeekend = 'Friday';
  final _fromKey = GlobalKey<FormState>();
  var itemsSecondWeekend = ['Friday', 'Saturday', 'Sunday', 'Monday'];
  DateTime _dateTimeJoining = DateTime.now();

  Future _showJoninigDate() {
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
                onDateTimeChanged: (dateTimeJoining) {
                  return setState(() {
                    setState(() {
                      joningDateController.text =
                          DateFormat("dd-MMM-yyyy").format(dateTimeJoining);
                    });
                    _dateTimeJoining = dateTimeJoining;
                  });
                }),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(backgroundColor: Colors.transparent, body: Container()),
    );
  }
}
