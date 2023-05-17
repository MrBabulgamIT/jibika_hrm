import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

class AuthPasswordTextFiledWidget extends StatefulWidget {
  AuthPasswordTextFiledWidget(
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
      required this.prefixImage,
      required this.textColor,
      required this.underlineColor});

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
  final String? suffixText;
  final String? keyy;
  final dynamic prefixImage;
  final Color underlineColor;
  final Color textColor;

  @override
  State<AuthPasswordTextFiledWidget> createState() =>
      _AuthPasswordTextFiledWidgetState();
}

class _AuthPasswordTextFiledWidgetState
    extends State<AuthPasswordTextFiledWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.w),
      child: TextFormField(
        validator: widget.validator,
        cursorColor: widget.textColor,
        obscureText: _obscureText,
        controller: widget.controller,
        style: GoogleFonts.roboto(
            color: widget.textColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
              bottom: 0,
              top: 20.h,
            ),
            prefixIconConstraints: const BoxConstraints(),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: widget.textColor,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: widget.underlineColor, width: 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: widget.underlineColor, width: 1)),
            hintText: widget.hintText,
            prefixIconColor: widget.underlineColor,
            hintStyle: GoogleFonts.roboto(
                color: widget.textColor,
                fontSize: 15.sp,
                textStyle: TextStyle(),
                fontWeight: FontWeight.w500),
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 10),
              child: widget.prefixImage,
            )),
      ),
    );
  }
}

class PrimaryAuthPasswordTextFiledWidget extends StatefulWidget {
  PrimaryAuthPasswordTextFiledWidget({
    this.icon,
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
    required this.prefixImage,
  });

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
  final String? suffixText;
  final String? keyy;
  final dynamic prefixImage;

  @override
  State<PrimaryAuthPasswordTextFiledWidget> createState() =>
      _PrimaryAuthPasswordTextFiledWidgetState();
}

class _PrimaryAuthPasswordTextFiledWidgetState
    extends State<PrimaryAuthPasswordTextFiledWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.w),
      child: TextFormField(
        obscureText: _obscureText,
        controller: widget.controller,
        validator: widget.validator,
        style: GoogleFonts.roboto(
            color: colorPrimary, fontSize: 15.sp, fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 0.h, top: 20.h),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: colorPrimary,
              ),
            ),
            prefixIconConstraints: const BoxConstraints(),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: colorSecondary, width: 1)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: colorSecondary, width: 1)),
            hintText: widget.hintText,
            prefixIconColor: colorPrimary,
            hintStyle: GoogleFonts.roboto(
                color: colorPrimary,
                fontSize: 15.sp,
                fontWeight: FontWeight.w500),
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 10),
              child: widget.prefixImage,
            )),
      ),
    );
  }
}
