import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestVarificationPage extends StatelessWidget {
  RestVarificationPage({super.key});

  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          body: Container()

          //  GetBuilder<AuthController>(
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
          //                     myStylesWhite18("Reset Password", FontWeight.w600,
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
          //                 height: 19.h,
          //               ),
          //               SizedBox(
          //                 height: 82.h,
          //               ),
          //               AuthPasswordTextFiledWidget(
          //                 validator: (value) {
          //                   if (value.isEmpty) {
          //                     return 'Please enter Password';
          //                   }
          //                   if (value.length < 6) {
          //                     return 'Must be more than 6 charater';
          //                   }
          //                 },
          //                 controller: authCon.newPassword_controller,
          //                 hintText: "New Password",
          //                 prefixImage: Image.asset(
          //                   "images/lock_icon.png",
          //                   width: 16.w,
          //                   height: 21.h,
          //                   color: colorPrimary,
          //                 ),
          //                 textColor: colorPrimary,
          //                 underlineColor: colorSecondary,
          //               ),
          //               SizedBox(
          //                 height: 41.h,
          //               ),
          //               AuthPasswordTextFiledWidget(
          //                 validator: (value) {
          //                   if (value.isEmpty) {
          //                     return 'Please enter Re-Password';
          //                   }
          //                   if (value != authCon.newPassword_controller!.text) {
          //                     return 'Please Enter Same Password';
          //                   }
          //                 },
          //                 underlineColor: colorSecondary,
          //                 controller: authCon.confirmPassword_controller,
          //                 hintText: "Confirm Password",
          //                 textColor: colorPrimary,
          //                 prefixImage: Padding(
          //                   padding: EdgeInsets.only(right: 10.w),
          //                   child: Image.asset(
          //                     "images/lock_icon.png",
          //                     width: 16.w,
          //                     height: 21.h,
          //                     color: colorPrimary,
          //                   ),
          //                 ),
          //               ),
          //               SizedBox(
          //                 height: 80.h,
          //               ),
          //               authCon.getIsLoading
          //                   ? LoadingButton()
          //                   : GestureDetector(
          //                       onTap: () {
          //                         if (_fromKey.currentState!.validate()) {
          //                           authCon.resetPass();
          //                         }
          //                       },
          //                       child: ButtonContainerWidget(
          //                           text: "Change Password")),
          //             ],
          //           ),
          //         ),
          //       );
          //     }),
          ),
    );
  }
}
