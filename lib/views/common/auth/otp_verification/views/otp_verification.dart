import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OTP_VerificationPage extends StatelessWidget {
  OTP_VerificationPage({super.key});

  final otp_controller = TextEditingController();
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(
          // body: GetBuilder<AuthController>(
          //     init: AuthController(),
          //     builder: (authCon) {
          //       return SingleChildScrollView(
          //         child: Container(
          //           height: Get.height,
          //           decoration: const BoxDecoration(
          //             image: DecorationImage(
          //               image: AssetImage(
          //                 "images/login_background_new.png",
          //               ),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           child: Column(
          //             children: [
          //               SizedBox(
          //                 height: 50.h,
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.only(left: 32),
          //                 child: Row(
          //                   children: [
          //                     GestureDetector(
          //                         onTap: (() => Get.back()),
          //                         child: Image.asset(
          //                           "images/arrow_back.png",
          //                           color: colorPrimary,
          //                         )),
          //                     SizedBox(
          //                       width: 65.w,
          //                     ),
          //                     myStylesWhite18("OTP Verification", FontWeight.w600,
          //                         colorPrimary),
          //                   ],
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 54.h,
          //               ),
          //               Image.asset(
          //                 "images/login_logo.png",
          //                 height: 111.h,
          //                 width: 117.w,
          //               ),
          //               SizedBox(
          //                 height: 140.h,
          //               ),
          //               AuthTextFiledWidget(
          //                 keybordType: TextInputType.number,
          //                 underlineColor: colorSecondary,
          //                 controller: otp_controller,
          //                 hintTextColor: colorPrimary,
          //                 hintText: "OTP",
          //                 validator: (value) {
          //                   if (value.isEmpty) {
          //                     return 'Please enter OTP';
          //                   }
          //                 },
          //                 prefixImage: Padding(
          //                   padding: EdgeInsets.only(right: 10.w),
          //                   child: Image.asset(
          //                     "images/otp_icon.png",
          //                     width: 16.w,
          //                     height: 22.h,
          //                     color: colorPrimary,
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 12.h,
          //               ),
          //               myStylesText12(
          //                   "Check ${(authCon.number_controller!.text[0] == '0') ? authCon.number_controller!.text : "0${authCon.number_controller!.text}"} for OTP",
          //                   FontWeight.w500,
          //                   colorPrimary),
          //               SizedBox(
          //                 height: 93.h,
          //               ),
          //               authCon.getIsLoading
          //                   ? LoadingButton()
          //                   : GestureDetector(
          //                       onTap: () {
          //                         if (_fromKey.currentState!.validate()) {
          //                           authCon.varifyOtp(otp: otp_controller.text);
          //                         }
          //                       },
          //                       child: ButtonContainerWidget(text: "Verify OTP")),
          //             ],
          //           ),
          //         ),
          //       );
          //     }),
          ),
    );
  }
}
