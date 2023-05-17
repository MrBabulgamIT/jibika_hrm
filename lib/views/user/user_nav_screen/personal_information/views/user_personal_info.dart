import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:jibika_plexus_hrmm/global/controllers/image_controller.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

import '../../../controller/user_con.dart';

class UserPersonalInformationPage extends StatefulWidget {
  UserPersonalInformationPage({super.key});

  @override
  State<UserPersonalInformationPage> createState() =>
      _UserPersonalInformationPageState();
}

class _UserPersonalInformationPageState
    extends State<UserPersonalInformationPage> {
  UserController userCon = Get.put(UserController());
  final iDCardController = TextEditingController();
  final lastEducationController = TextEditingController();

  DateTime _dateTimeBirth = DateTime.now();

  Future buildDateTimeBirthday() {
    return showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220.h,
            child: DefaultTextStyle.merge(
              style: TextStyle(fontSize: 10.sp),
              child: CupertinoDatePicker(
                  initialDateTime: DateTime.now(),
                  mode: CupertinoDatePickerMode.date,
                  backgroundColor: textcolorWhite,
                  minimumYear: 1950,
                  maximumYear: 2100,
                  onDateTimeChanged: (dateTimeAttendance) {
                    return setState(() {
                      setState(() {
                        userCon.dateController!.text = DateFormat("dd-MMM-yyyy")
                            .format(dateTimeAttendance);
                      });
                      _dateTimeBirth = dateTimeAttendance;
                    });
                  }),
            ),
          );
        });
  }

  ImageController controller = Get.put(ImageController());

  final rFCardController = TextEditingController();

  final fatherNameController = TextEditingController();

  final emailController = TextEditingController();

  final numberController = TextEditingController();

  final gmailController = TextEditingController();
  final presentAddressController = TextEditingController();

  final permanentAddressController = TextEditingController();

  String dropdownValueGender = 'Male';

  var itemsGender = [
    'Male',
    'Female',
    'Others',
  ];
  String dropdownValueCountry = 'BD +88';

  var itemsCountry = ['BD +88', 'IND +91', 'USA +1', 'PAK +92'];
  String dropdownValueMarriedStatus = 'Single';

  var itemsMarrid = [
    'Single',
    'Married',
    'Divorce',
  ];

  String dropdownValueReligion = 'Islam';
  String? pickedCountryCode;

  var itemsReligion = [
    'Islam',
    'Hindu',
    'Others',
  ];
  String dropdownValueEmployeeSatus = 'Parament';

  var itemsEmployeeSatus = [
    'Parament',
    'Remote',
    'Others',
  ];

  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Container(),
    );
  }
}
