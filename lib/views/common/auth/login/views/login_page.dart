import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/utils/bottom/botton_container.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';
import 'package:jibika_plexus_hrmm/utils/textfield/password_textfield.dart';
import 'package:jibika_plexus_hrmm/utils/textfield/white_text_field.dart';
import 'package:jibika_plexus_hrmm/views/common/auth/forgot_password/views/forgot_password_page.dart';
import 'package:jibika_plexus_hrmm/views/common/auth/login/views/demo_page.dart';
import 'package:jibika_plexus_hrmm/views/common/on_boarding_screen/main_view/onboarding_main%20.dart';
import 'package:jibika_plexus_hrmm/views/user/user_nav_main/userinfo_navmain_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool cheekboxValue = false;

  String dropdownValueCountry = 'BD +88';

  var itemsCountry = ['BD +88', 'IND +91', 'USA +1', 'PAK +92'];

  final _fromKey = GlobalKey<FormState>();
  String? pickedCountryCode;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/login_background_new.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 62.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(DemoPage());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 5.h),
                          decoration: BoxDecoration(
                              color: textcolorWhite,
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: const Offset(0, 1))
                              ]),
                          child: Text("Demo",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      color: colorPrimary))),
                        ),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(OnBoardingMain());
                          },
                          child: Container(
                            height: 20.h,
                            width: 20.w,
                            alignment: Alignment.topRight,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("images/details_icon.png"),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Image.asset(
                    "images/login_logo.png",
                    height: 111.h,
                    width: 117.w,
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 55.w),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Container(
                            width: 250.w,
                            child: AuthLowPaddingTextFiledWidget(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter Mobile Number';
                                }
                                if (value.length < 10) {
                                  return 'Please Enter Right Number';
                                }
                              },
                              keybordType: TextInputType.number,
                              controller: null,
                              hintText: "Mobile Number",
                              hintTextColor: colorPrimary,
                              underlineColor: colorSecondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  AuthPasswordTextFiledWidget(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Password';
                      }
                      if (value.length < 6) {
                        return 'Must be more than 6 charater';
                      }
                    },
                    hintText: "Password",
                    prefixImage: const Icon(
                      Icons.lock,
                      size: 22,
                      color: colorPrimary,
                    ),
                    textColor: colorPrimary,
                    underlineColor: colorSecondary,
                    controller: null,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50.w, right: 55.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                  unselectedWidgetColor: colorPrimary),
                              child: Container(
                                width: 30.w,
                                height: 30.h,
                                child: Checkbox(
                                    checkColor: textcolorWhite,
                                    activeColor: colorPrimary,
                                    value: cheekboxValue,
                                    focusColor: colorPrimary,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        cheekboxValue = value!;
                                      });
                                    }),
                              ),
                            ),
                            myStyleCustome("Remember me", 12, textcolorAsss,
                                FontWeight.w500),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => ForgotPasswordPage());
                          },
                          child: myStyleCustome("Forget Password?", 12,
                              textcolorAsss, FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_fromKey.currentState!.validate()) {}
                    },
                    child: ButtonContainerWidget(
                      text: "Login",
                      fontsize: 20.sp,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.to(CompanySignupPage());
                    },
                    child: Text(
                      "Register as a Company",
                      style: GoogleFonts.roboto(
                        fontSize: 14.sp,
                        color: textcolorWhite,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      //Get.to(CompanySignupPage());
                    },
                    child: Image(
                      image: const AssetImage("images/login_scn_icon.gif"),
                      height: 60.h,
                      width: 60.w,
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.w, vertical: 14.h),
                  height: 48.h,
                  width: Get.width,
                  color: colorPrimary,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myStylesText14("Help", textcolorWhite, FontWeight.w500),
                        GestureDetector(
                          onTap: () {
                            Get.to(UserInfo_Nav_Main_Page());
                          },
                          child: myStylesText14("New? Get Started",
                              textcolorWhite, FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: () {
                            //  Get.to(PrivacyPolicy());
                          },
                          child: myStylesText14(
                              "Privacy", textcolorWhite, FontWeight.w500),
                        ),
                      ]),
                ))
          ],
        ),
      )),
    );
  }
}
