import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jibika_plexus_hrmm/utils/bottom/botton_container.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/utils/textfield/white_text_field.dart';
import 'package:jibika_plexus_hrmm/views/common/auth/login/views/login_page.dart';

class OTP_VerificationAdminPage extends StatelessWidget {
  OTP_VerificationAdminPage({super.key});

  final otpVerify_controller = TextEditingController();
  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: Get.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/login_background.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
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
                          child: Image.asset("images/arrow_back.png")),
                      SizedBox(
                        width: 65.w,
                      ),
                      myStylesWhite18(
                          "OTP Verification", FontWeight.w600, textcolorWhite),
                    ],
                  ),
                ),
                SizedBox(
                  height: 54.h,
                ),
                Image.asset(
                  "images/login_logo.png",
                  height: 111.h,
                  width: 117.w,
                ),
                SizedBox(
                  height: 140.h,
                ),
                AuthTextFiledWidget(
                  underlineColor: textcolorWhite,
                  controller: otpVerify_controller,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter OTP';
                    }
                  },
                  hintTextColor: textcolorWhite,
                  keybordType: TextInputType.number,
                  hintText: "OTP",
                  prefixImage: Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Image.asset(
                      "images/otp_icon.png",
                      width: 16.w,
                      height: 22.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                myStylesText12("Check 01712345678 for OTP", FontWeight.w500,
                    textcolorWhite),
                SizedBox(
                  height: 61.h,
                ),
                GestureDetector(
                    onTap: () {
                      if (_fromKey.currentState!.validate()) {
                        Get.to(LoginPage());
                      }
                    },
                    child: ButtonContainerWidget(text: "Verify OTP")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
