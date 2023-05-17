class ActiveEmployeeClass {
  String? nameEmployee;
  String? designationEmployee;
  String? imageEmployee;
  String? dateDOJEmployee;
  String? grossSalaryEmployee;
  String? year;
  ActiveEmployeeClass(
      {this.nameEmployee,
      this.dateDOJEmployee,
      this.designationEmployee,
      this.grossSalaryEmployee,
      this.imageEmployee,
      this.year});
}

List<ActiveEmployeeClass> activeEmployeeInfo = [
  ActiveEmployeeClass(
      nameEmployee: "610  -  Md. Azizur Asif taj",
      designationEmployee: "Software Programmer (HHQ)",
      dateDOJEmployee: "DOJ: 10-Dec-2012",
      grossSalaryEmployee: "Salary: 30000 Tk",
      imageEmployee: "images/person.png",
      year: "30Y 2M"),
  ActiveEmployeeClass(
      nameEmployee: "611  -  Md. Samiul ",
      designationEmployee: "Flutter Developer",
      dateDOJEmployee: "DOJ: 01-Jan-2023",
      grossSalaryEmployee: "Salary: 20000 Tk",
      imageEmployee: "images/man_1.png",
      year: "25Y 5M"),
  ActiveEmployeeClass(
      nameEmployee: "610  -  Abdur Rohim",
      designationEmployee: "Web Developer",
      dateDOJEmployee: "DOJ: 15-Jul-2022",
      grossSalaryEmployee: "Salary: 40000 Tk",
      imageEmployee: "images/man_2.png",
      year: "35Y 1M"),
  ActiveEmployeeClass(
      nameEmployee: "610  -  Mursed Alom",
      designationEmployee: "Software Programmer (HQ)",
      dateDOJEmployee: "DOJ: 23-Oct-2022",
      grossSalaryEmployee: "Salary: 50000 Tk",
      imageEmployee: "images/man_3.png",
      year: "35Y 5M"),
];
