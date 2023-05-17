import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

class ButtonContainerWidget extends StatelessWidget {
  ButtonContainerWidget({
    required this.text,
    this.fontsize,
  });

  final String text;
  double? fontsize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 40.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: colorPrimary),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: fontsize,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class LoadingButton extends StatelessWidget {
  LoadingButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 40.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: colorPrimary),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          )),
        ),
      ),
    );
  }
}
