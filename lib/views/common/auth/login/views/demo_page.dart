import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/utils/textfield/white_text_field.dart';

import '../../../../../utils/bottom/botton_container.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  final companyNameController = TextEditingController();
  final personNameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailController = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/company_background.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                      child: myStylesText20(
                    "Welcome to Jibika Plexus",
                    FontWeight.w800,
                  )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                      child: myStylesText14(
                    "(Mobile App HRM Solution)",
                    textcolorBalck,
                    FontWeight.w500,
                  )),
                  Padding(
                    padding: EdgeInsets.all(15.sp),
                    child: Text(
                        "If you have a large corporate office or industry \n Where the employees are more than 100, \nYou need a full version Jibika Plexus web application.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: textcolorBalck,
                          fontStyle: FontStyle.italic,
                        )),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: myStylesText14(
                        "For more information about Jibika Plexus web Application please visit www.jibikaplexus.com",
                        textcolorBalck,
                        FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 4.h, horizontal: 1.h),
                      color: textcolorAsss,
                      child: myStylesText14("We will contact you shortly.",
                          textcolorWhite, FontWeight.w500)),
                  SizedBox(
                    height: 20.h,
                  ),
                  AuthTextFiledWidget(
                    controller: companyNameController,
                    underlineColor: colorSecondary,
                    lebelText: "Company Name:",
                    hintText: "Jibika Plexus",
                    labelTextColor: colorPrimary,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter compnay name';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AuthTextFiledWidget(
                    controller: personNameController,
                    underlineColor: colorSecondary,
                    labelTextColor: colorPrimary,
                    lebelText: "Contact Person Name:",
                    hintText: "Abdur Rahim",
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter person name';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AuthTextFiledWidget(
                    controller: mobileNumberController,
                    underlineColor: colorSecondary,
                    lebelText: "Mobile Number:",
                    hintText: "01990229191",
                    labelTextColor: colorPrimary,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter mobile number';
                      }
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AuthTextFiledWidget(
                    controller: emailController,
                    underlineColor: colorSecondary,
                    lebelText: "Email Address:",
                    hintText: "jibika@gmail.com",
                    labelTextColor: colorPrimary,
                    validator: (value) {
                      if (!EmailValidator.validate(value)) {
                        return 'Please enter valid email address';
                      }
                    },
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_fromKey.currentState!.validate()) {}
                    },
                    child: ButtonContainerWidget(
                      text: "Demo Request",
                      fontsize: 17.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
