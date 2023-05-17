import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jibika_plexus_hrmm/global/controllers/image_controller.dart';
import 'package:jibika_plexus_hrmm/utils/bottom/botton_container.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/utils/textfield/white_text_field.dart';

class UserPrimaryInformationPage extends StatefulWidget {
  UserPrimaryInformationPage({super.key});

  @override
  State<UserPrimaryInformationPage> createState() =>
      _UserPrimaryInformationPageState();
}

class _UserPrimaryInformationPageState
    extends State<UserPrimaryInformationPage> {
  final numberController = TextEditingController();

  final dateController = TextEditingController();

  final salaryGrossController = TextEditingController();

  String dropdownValueGender = 'Male';

  void _showDate() {
    showDatePicker(
            initialDatePickerMode: DatePickerMode.day,
            context: context,
            builder: (context, child) => Theme(
                data: ThemeData(
                  primarySwatch: Colors.green,
                ),
                child: child ?? Text("")),
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        _dateTime = value!;
        setState(() {
          dateController.text = "${_dateTime.toLocal()}".split(' ')[0];
        });
      });
    });
  }

  DateTime _dateTime = DateTime.now();

  var itemsGender = [
    'Male',
    'Female',
    'Others',
  ];
  final textName = TextEditingController();
  var _addName;
  bool _isVisible = false;
  String dropdownValueWeekend = 'Friday';

  var itemsWeekend = ['Friday', 'Saturday', 'Sunday', 'Monday'];
  String? pickedCountryCode;

  final _fromKey = GlobalKey<FormState>();
  ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: (() => Get.back()),
                      child: Image.asset(
                        "images/arrow_back.png",
                        color: textcolorBalck,
                      )),
                  SizedBox(
                    width: 51.w,
                  ),
                  myStylesWhite18(
                      "Primary Information", FontWeight.w600, textcolorBalck),
                ],
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Obx(() {
                              return GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                      barrierDismissible: true,
                                      title: "Select Image",
                                      content: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.w),
                                        child: Column(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                imageController.getPrimaryImage(
                                                    ImageSource.camera);
                                              },
                                              child: ButtonContainerWidget(
                                                  text: "Select Camera "),
                                            ),
                                            SizedBox(
                                              height: 20.h,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                imageController.getPrimaryImage(
                                                    ImageSource.gallery);
                                              },
                                              child: ButtonContainerWidget(
                                                  text: "Select Gallery "),
                                            ),
                                          ],
                                        ),
                                      ));
                                },
                                child: CircleAvatar(
                                  radius: 45,
                                  backgroundImage: imageController
                                          .selectPrimaryImagePath.isEmpty
                                      ? const AssetImage(
                                          "images/primary_icon.png")
                                      : FileImage(File(imageController
                                          .selectPrimaryImagePath
                                          .value)) as ImageProvider,
                                ),
                              );
                            })),
                        Positioned(
                          top: 5,
                          right: 25.h,
                          width: 9.h,
                          height: 8.w,
                          child: GestureDetector(
                            onTap: () {
                              Get.defaultDialog(
                                  contentPadding: EdgeInsets.all(5),
                                  barrierDismissible: true,
                                  title: "Select Image",
                                  content: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 30.w),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              imageController.getPrimaryImage(
                                                  ImageSource.camera);
                                            },
                                            child: Icon(
                                              Icons.camera_alt,
                                              size: 30.sp,
                                              color: colorPrimary,
                                            )),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        GestureDetector(
                                            onTap: () {
                                              imageController.getPrimaryImage(
                                                  ImageSource.gallery);
                                            },
                                            child: Icon(
                                              Icons.photo,
                                              size: 30.sp,
                                              color: colorPrimary,
                                            )),
                                      ],
                                    ),
                                  ));
                            },
                            child: const Icon(
                              Icons.drive_file_rename_outline,
                              size: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Stack(
                      children: [
                        myStylesText24(
                            "Abdur Rahman", FontWeight.w600, colorPrimary),
                        Positioned(
                          top: 0,
                          right: 0.h,
                          width: 0.h,
                          height: 0.w,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isVisible = true;
                              });
                            },
                            child: const Icon(
                              Icons.drive_file_rename_outline,
                              color: colorPrimary,
                              size: 15,
                            ),
                          ),
                        ),
                        // Visibility(
                        //   visible: _isVisible = false,
                        //   child: myStylesText24(
                        //       _addName.toString(), FontWeight.w600, colorPrimary),
                        // ),
                        // Visibility(
                        //   visible: _isVisible = true,
                        //   child: EditableText(
                        //     autofocus: false,
                        //     backgroundCursorColor: Colors.amber,
                        //     cursorColor: Colors.green,
                        //     style: GoogleFonts.roboto(
                        //         color: colorPrimary,
                        //         fontSize: 24,
                        //         fontWeight: FontWeight.w600),
                        //     focusNode: FocusNode(),
                        //     controller: textName,
                        //     enableSuggestions: false,
                        //     onSubmitted: (val) {
                        //       _addName!(val);
                        //       Navigator.pop(context);
                        //       setState(() {
                        //         _isVisible = false;
                        //       });
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Stack(
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: myStylesText14("Software Engineer",
                                colorPrimary, FontWeight.w400)),
                        Positioned(
                          top: 1.67,
                          right: 0.h,
                          width: 7.5.w,
                          height: 6.66.h,
                          child: const Icon(
                            Icons.drive_file_rename_outline,
                            size: 10,
                          ),
                        )
                      ],
                    ),
                    // AuthTextFiledWidget(
                    //   controller: numberController,
                    //   hintText: "01717345678",
                    //   keybordType: TextInputType.number,
                    //   labelTextColor: Color(0xff747775B2),
                    //   hintTextColor: textcolorBalck,
                    //   lebelText: "Phone Number",
                    //   validator: (value) {
                    //     if (value.isEmpty) {
                    //       return 'Please enter Mobile Number';
                    //     }
                    //     if (value.length < 10) {
                    //       return 'Please Enter Right Number';
                    //     }
                    //   },
                    //   underlineColor: colorSecondary,
                    //   prefixImage: Padding(
                    //     padding: const EdgeInsets.only(right: 10),
                    //     child: Image(
                    //       image: const AssetImage("images/call_iconn.png"),
                    //       height: 25.h,
                    //       width: 25.w,
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55.w),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(
                            child: Container(
                              width: 250.w,
                              child: AuthLowPaddingTextFiledWidget(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Mobile Number';
                                  }
                                  if (value.length < 10) {
                                    return 'Please Enter Right Number';
                                  }
                                },
                                keybordType: TextInputType.number,
                                controller: numberController,
                                hintText: "Mobile Number",
                                hintTextColor: colorPrimary,
                                underlineColor: colorSecondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: DropdownButtonFormField(
                        value: dropdownValueGender,
                        decoration: InputDecoration(
                            labelText: "Gender",
                            prefixIconConstraints: const BoxConstraints(),
                            labelStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Color(0xff747775B2)),
                            enabledBorder: const UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: colorSecondary, width: 2)),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: colorSecondary, width: 2)),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Image(
                                image: const AssetImage("images/gender.png"),
                                height: 25.h,
                                width: 25.w,
                              ),
                            )),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: itemsGender.map((String itemsFirstt) {
                          return DropdownMenuItem(
                            value: itemsFirstt,
                            child: Text(
                              itemsFirstt,
                              style: GoogleFonts.roboto(color: colorPrimary),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValueGender = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AuthTextFiledWidget(
                      controller: salaryGrossController,
                      hintText: "50,000",
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter Gross Salary';
                        }
                      },
                      keybordType: TextInputType.number,
                      hintTextColor: colorPrimary,
                      labelTextColor: Color(0xff747775B2),
                      lebelText: "Gross Salary",
                      underlineColor: colorSecondary,
                      prefixImage: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Image(
                          image: const AssetImage("images/payroll.png"),
                          height: 25.h,
                          width: 25.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    AuthTextFiledWidget(
                      hintText: "${_dateTime.toLocal()}".split(' ')[0],
                      keybordType: TextInputType.none,
                      hintTextColor: colorPrimary,
                      lebelText: "Date of Birth",
                      onTab: () {
                        _showDate();
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please select date';
                        }
                      },
                      labelTextColor: Color(0xff747775B2),
                      underlineColor: colorSecondary,
                      prefixImage: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Image(
                          image: const AssetImage("images/date_ranger.png"),
                          height: 25.h,
                          width: 25.w,
                        ),
                      ),
                      controller: dateController,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: DropdownButtonFormField(
                        value: dropdownValueWeekend,
                        decoration: InputDecoration(
                            labelText: "First Weekend",
                            prefixIconConstraints: const BoxConstraints(),
                            labelStyle: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: Color(0xff747775B2)),
                            enabledBorder: const UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                borderSide: BorderSide(
                                    color: colorSecondary, width: 2)),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: colorSecondary, width: 2)),
                            prefixIcon: Padding(
                              padding: EdgeInsets.only(right: 10.w),
                              child: Image(
                                image: const AssetImage("images/week_end.png"),
                                height: 25.h,
                                width: 25.w,
                              ),
                            )),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: itemsWeekend.map((String itemsWeekend) {
                          return DropdownMenuItem(
                            value: itemsWeekend,
                            child: Text(
                              itemsWeekend,
                              style: GoogleFonts.roboto(color: colorPrimary),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValueWeekend = newValue!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: GestureDetector(
                          onTap: () {
                            if (_fromKey.currentState!.validate()) ;
                          },
                          child: ButtonContainerWidget(text: "Save")),
                    ),
                    SizedBox(
                      height: 10.h,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
