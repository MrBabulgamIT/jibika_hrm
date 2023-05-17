import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/global/controllers/image_controller.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

class UserRefererInformationPage extends StatelessWidget {
  UserRefererInformationPage({super.key});

  final nameController = TextEditingController();
  final addressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final relationController = TextEditingController();

  final _fromKey = GlobalKey<FormState>();
  ImageController imageController = Get.put(ImageController());

  var _dx;
  var _dy;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: textcolorWhite,
        body: Form(
          key: _fromKey,
          child: Container(),
        ));
  }
}
