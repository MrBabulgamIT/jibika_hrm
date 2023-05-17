import 'package:flutter/animation.dart';

class SalaryModel {
  String? tittle;
  String? hourse;
  String? image;
  Color? color;

  SalaryModel({this.hourse, this.tittle, this.image, this.color});
}

List<SalaryModel> salaryModelInfo = [
  SalaryModel(
      hourse: "545 H",
      tittle: "Total Man Hour",
      color: Color(0xffACC027).withOpacity(.50),
      image: "images/three_person.png"),
  SalaryModel(
      hourse: "340 H",
      color: Color(0xffCBB9EF).withOpacity(.50),
      tittle: "Total Working Hour",
      image: "images/three_person.png"),
  SalaryModel(
      hourse: "230 H",
      tittle: "Total Man Hour",
      color: Color(0xffACC027).withOpacity(.50),
      image: "images/three_person.png"),
  SalaryModel(
      hourse: "320 H",
      color: Color(0xffCBB9EF).withOpacity(.50),
      tittle: "Total Gross salary",
      image: "images/three_person.png"),
  SalaryModel(
      hourse: "210 H",
      tittle: "Net payable salary",
      color: Color(0xffACC027).withOpacity(.50),
      image: "images/three_person.png"),
  SalaryModel(
      hourse: "150 H",
      color: Color(0xffCBB9EF).withOpacity(.50),
      tittle: "Active Employee",
      image: "images/three_person.png"),
  SalaryModel(
      hourse: "430 H",
      tittle: "Inactive Employee",
      color: Color(0xffACC027).withOpacity(.50),
      image: "images/three_person.png"),
  SalaryModel(
      hourse: "310 H",
      color: Color(0xffCBB9EF).withOpacity(.50),
      tittle: "New Join",
      image: "images/three_person.png"),
];
