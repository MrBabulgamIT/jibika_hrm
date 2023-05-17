import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../otp_verification/views/otp_verification.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  // AuthController authCon = Get.put(AuthController());
  String dropdownValueCountry = 'BD +88';

  var itemsCountry = ['BD +88', 'IND +91', 'USA +1', 'PAK +92'];

  // final number_controller = TextEditingController();
  // String? pickedCountryCode;

  final _fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(body: Container()),
    );
  }
}
