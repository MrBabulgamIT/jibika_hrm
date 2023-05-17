import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jibika_plexus_hrmm/utils/color/color_widget.dart';
import 'package:jibika_plexus_hrmm/utils/text/text_widget.dart';

class UserSalaryInformationPage extends StatefulWidget {
  UserSalaryInformationPage({super.key});

  @override
  State<UserSalaryInformationPage> createState() =>
      _UserSalaryInformationPageState();
}

class _UserSalaryInformationPageState extends State<UserSalaryInformationPage> {
  final salaryController = TextEditingController();

  final basicCotroller = TextEditingController();

  final hrController = TextEditingController();

  final faController = TextEditingController();
  String? pickedCountryCode;

  final maController = TextEditingController();

  final overRateController = TextEditingController();

  final bkashNumberController = TextEditingController();

  final dbblController = TextEditingController();

  final accountNoController = TextEditingController();

  String dropdownValueCountry = 'BD +88';

  var itemsCountry = ['BD +88', 'IND +91', 'USA +1', 'PAK +92'];
  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(key: _fromKey, child: Container());
  }
}
