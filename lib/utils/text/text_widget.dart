import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';

myStyleCustome(String text, double size, Color? color, FontWeight? FontWeight) {
  return Text(text,
      style: GoogleFonts.roboto(
        fontSize: size,
        color: color,
        fontWeight: FontWeight,
      ));
}

myInterStyleCustome(
    String text, double size, Color? color, FontWeight? FontWeight) {
  return Text(text,
      textAlign: TextAlign.justify,
      style: GoogleFonts.inter(
        fontSize: size,
        color: color,
        fontWeight: FontWeight,
      ));
}

myStylesText12(String text, FontWeight? FontWeight, Color? color) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 12.sp,
      color: color,
      fontWeight: FontWeight,
    ),
  );
}

myStylesText14(String text, Color? color, FontWeight? FontWeight) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 14.sp,
      color: color,
      fontWeight: FontWeight,
    ),
    overflow: TextOverflow.ellipsis,
  );
}

myStylesText14Underline(String text, Color? color, FontWeight? FontWeight) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 14.sp,
      color: color,
      decoration: TextDecoration.underline,
      fontWeight: FontWeight,
    ),
  );
}

myStylesNavDawerText(
  String text,
  Color? color,
) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 14.sp,
      color: color,
      fontWeight: FontWeight.w500,
    ),
  );
}

myStylesText20(String text, FontWeight? FontWeight) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 20.sp,
      color: textcolorBalck,
      fontWeight: FontWeight,
    ),
  );
}

myStylesText17(String text, FontWeight? FontWeight) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 17.sp,
      color: textcolorBalck,
      fontWeight: FontWeight,
    ),
  );
}

myStylesText24(String text, FontWeight? FontWeight, Color color) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 24.sp,
      color: color,
      fontWeight: FontWeight,
    ),
  );
}

myStylesWhite16(String text, FontWeight? FontWeight) {
  return Center(
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.roboto(
        fontSize: 16.sp,
        color: textcolorBalck,
        fontWeight: FontWeight,
      ),
    ),
  );
}

myStylesWhite14Level(String text, FontWeight? FontWeight) {
  return Padding(
    padding: EdgeInsets.only(left: 55.w),
    child: Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 14.sp,
        color: Color(0xff747775B2),
        fontWeight: FontWeight,
      ),
    ),
  );
}

myStylesWhite18(String text, FontWeight? FontWeight, Color color) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      fontSize: 18.sp,
      color: color,
      fontWeight: FontWeight,
    ),
  );
}
