import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

class PrimaryColorAuthTextFiledWidget extends StatelessWidget {
  PrimaryColorAuthTextFiledWidget(
      {this.icon,
      this.keytype,
      this.lebelText,
      this.keyy,
      this.maxNumber,
      required this.controller,
      this.prefixIcon,
      this.data,
      this.validator,
      required this.hintText,
      this.initialText,
      this.suffixIcon,
      this.formatter,
      this.onChangeFunction,
      this.suffixText,
      this.keybordType,
      this.prefixImage,
      this.onTap});

  final TextEditingController? controller;
  final Function? onChangeFunction;
  final dynamic icon;
  final dynamic data;
  final dynamic suffixIcon;
  final dynamic onTap;
  final dynamic keybordType;
  final dynamic prefixIcon;
  final String? initialText;
  final dynamic validator;
  final String? hintText;
  final int? maxNumber;
  final String? lebelText;
  final dynamic formatter;
  final dynamic keytype;
  final String? suffixText;
  final String? keyy;
  final dynamic prefixImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 55),
      child: TextFormField(
        controller: controller,
        validator: validator,
        onTap: onTap,
        keyboardType: keybordType,
        style: GoogleFonts.roboto(
            color: colorPrimary, fontSize: 15.sp, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 5.h, top: 15.h),
          prefixIconConstraints: const BoxConstraints(),
          enabledBorder: const UnderlineInputBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              borderSide: BorderSide(color: colorSecondary, width: 1)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: colorSecondary, width: 1)),
          hintText: hintText,
          labelText: lebelText,
          labelStyle: GoogleFonts.roboto(
              color: colorSecondary,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500),
          suffixIcon: suffixIcon,
          suffixIconConstraints: const BoxConstraints(),
          prefixIconColor: colorPrimary,
          hintStyle: GoogleFonts.roboto(
              color: colorPrimary,
              fontSize: 15.sp,
              textStyle: const TextStyle(),
              fontWeight: FontWeight.w500),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 10.w, top: 10.h),
            child: prefixImage,
          ),
        ),
      ),
    );
  }
}

class LowPaddingPrimaryColorAuthTextFiledWidget extends StatelessWidget {
  LowPaddingPrimaryColorAuthTextFiledWidget(
      {this.icon,
      this.keytype,
      this.lebelText,
      this.keyy,
      this.maxNumber,
      required this.controller,
      this.prefixIcon,
      this.data,
      this.validator,
      required this.hintText,
      this.initialText,
      this.suffixIcon,
      this.formatter,
      this.onChangeFunction,
      this.suffixText,
      this.keybordType,
      this.prefixImage,
      this.onTap});

  final TextEditingController? controller;
  final Function? onChangeFunction;
  final dynamic icon;
  final dynamic data;
  final dynamic suffixIcon;
  final dynamic onTap;
  final dynamic keybordType;
  final dynamic prefixIcon;
  final String? initialText;
  final dynamic validator;
  final String? hintText;
  final int? maxNumber;
  final String? lebelText;
  final dynamic formatter;
  final dynamic keytype;
  final String? suffixText;
  final String? keyy;
  final dynamic prefixImage;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      onTap: onTap,
      keyboardType: keybordType,
      style: GoogleFonts.roboto(
          color: colorPrimary, fontSize: 15.sp, fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 5.h, top: 15.h),
        prefixIconConstraints: const BoxConstraints(),
        enabledBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            borderSide: BorderSide(color: colorSecondary, width: 1)),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: colorSecondary, width: 1)),
        hintText: hintText,
        labelText: lebelText,
        labelStyle: GoogleFonts.roboto(
            color: colorSecondary,
            fontSize: 17.sp,
            fontWeight: FontWeight.w500),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 30,
        ),
        prefixIconColor: colorPrimary,
        hintStyle: GoogleFonts.roboto(
            color: colorPrimary,
            fontSize: 15.sp,
            textStyle: const TextStyle(),
            fontWeight: FontWeight.w500),
        prefixIcon: prefixImage,
      ),
    );
  }
}
