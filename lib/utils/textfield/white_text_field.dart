import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

class AuthTextFiledWidget extends StatelessWidget {
  AuthTextFiledWidget(
      {this.icon,
      this.keytype,
      this.lebelText,
      this.keyy,
      this.maxNumber,
      required this.controller,
      this.prefixIcon,
      this.data,
      this.validator,
      this.hintText,
      this.initialText,
      this.suffixIcon,
      this.formatter,
      this.onChangeFunction,
      this.suffixText,
      required this.underlineColor,
      this.prefixImage,
      this.suffixIconColor,
      this.labelTextColor,
      this.prefixIconColor,
      this.keybordType,
      this.hintTextColor,
      this.onTab});

  final TextEditingController? controller;
  final Function? onChangeFunction;
  final dynamic icon;
  final dynamic data;
  final dynamic suffixIcon;
  final dynamic prefixIcon;
  final String? initialText;
  final dynamic validator;
  final String? hintText;
  final int? maxNumber;
  final String? lebelText;
  final dynamic formatter;
  final dynamic onTab;
  final dynamic keytype;
  final String? suffixText;
  final String? keyy;
  final dynamic keybordType;
  final dynamic prefixImage;
  final Color? labelTextColor;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final Color? hintTextColor;
  Color underlineColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.w, vertical: 0),
      child: TextFormField(
        onTap: onTab,
        keyboardType: keybordType,
        controller: controller,
        cursorColor: textcolorWhite,
        validator: validator,
        style: GoogleFonts.roboto(
            color: hintTextColor, fontSize: 15.sp, fontWeight: FontWeight.w400),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 0.h, top: 15.h),
            enabledBorder: UnderlineInputBorder(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                borderSide: BorderSide(color: underlineColor, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: underlineColor, width: 1)),
            hintText: hintText,
            suffixIcon: suffixIcon,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: lebelText,
            suffixIconColor: suffixIconColor,
            labelStyle: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 17.sp,
                color: labelTextColor),
            prefixIconConstraints: const BoxConstraints(),
            prefixIconColor: prefixIconColor,
            hintStyle: GoogleFonts.roboto(
                color: hintTextColor,
                fontSize: 15.sp,
                textStyle: TextStyle(color: hintTextColor),
                fontWeight: FontWeight.w400),
            prefixIcon: prefixImage),
      ),
    );
  }
}

class AuthLowPaddingTextFiledWidget extends StatelessWidget {
  AuthLowPaddingTextFiledWidget(
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
      required this.underlineColor,
      this.prefixImage,
      this.suffixIconColor,
      this.labelTextColor,
      this.prefixIconColor,
      this.hintTextColor,
      this.keybordType});

  final TextEditingController? controller;
  final Function? onChangeFunction;
  final dynamic icon;
  final dynamic data;
  final dynamic suffixIcon;
  final dynamic prefixIcon;
  final String? initialText;
  final dynamic validator;
  final String? hintText;
  final int? maxNumber;
  final String? lebelText;
  final dynamic formatter;
  final dynamic keytype;
  final dynamic keybordType;
  final String? suffixText;
  final String? keyy;
  final dynamic prefixImage;
  final Color? labelTextColor;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
  final Color? hintTextColor;
  Color underlineColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: TextFormField(
        controller: controller,
        keyboardType: keybordType,
        style: GoogleFonts.roboto(
            color: hintTextColor, fontSize: 15, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 0.h, top: 15.h),
          enabledBorder: UnderlineInputBorder(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              borderSide: BorderSide(color: underlineColor, width: 1)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: underlineColor, width: 1)),
          hintText: hintText,
          suffixIcon: suffixIcon,
          labelText: lebelText,
          suffixIconColor: suffixIconColor,
          labelStyle: GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize: 17.sp,
            color: Color(0xff747775B2),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIconColor: prefixIconColor,
          hintStyle: GoogleFonts.roboto(
              color: hintTextColor,
              fontSize: 14.sp,
              textStyle: TextStyle(color: hintTextColor),
              fontWeight: FontWeight.w500),
          prefixIcon: prefixImage,
        ),
        validator: validator,
      ),
    );
  }
}
