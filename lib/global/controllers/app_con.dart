import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '../../utils/color/color_widget.dart';

class AppController extends GetxController {
  var isLoading = false.obs;
  get getIsloading => isLoading.value;
  set setIsLoading(bool val) => isLoading.value = val;

  //user primary info
  TextEditingController? nidController;
  TextEditingController? employeeController;
  TextEditingController? dateController;
  TextEditingController? numberController;
  TextEditingController? grossSalaryController;
  TextEditingController? dateofJoiningController;

  @override
  void onInit() {
    super.onInit();
    nidController = TextEditingController();
    employeeController = TextEditingController();
    dateController = TextEditingController();
    numberController = TextEditingController();
    grossSalaryController = TextEditingController();
    dateofJoiningController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeLoading(bool val) {
    isLoading.value = val;
    update();
  }

  //Rx DateTime

  Rx<DateTime> dateTime1 = DateTime.now().obs;
  Rx<DateTime> dateTime2 = DateTime.now().obs;
  RxString date = "".obs;
  Future<String> datePickerCupertino(
      {required String date1, required String date2}) async {
    await showCupertinoModalPopup(
        context: Get.context!,
        builder: (context) {
          return SizedBox(
            height: 220.h,
            child: CupertinoDatePicker(

                maximumDate: DateTime(2030),
                minimumDate: DateTime(1990),
                initialDateTime: DateTime.now(),
                mode: CupertinoDatePickerMode.date,
                backgroundColor: textcolorWhite,
                minimumYear: 1950,
                maximumYear: 2100,
                onDateTimeChanged: (dateTimeAttendance) {
                  if (date1 == "date1") dateTime1.value = dateTimeAttendance;
                  if (date2 == "date2") dateTime2.value = dateTimeAttendance;

                  date.value =
                      DateFormat("dd-MMM-yyyy").format(dateTimeAttendance);
                  update();
                }),
          );
        });
    return date.value;
  }
}
