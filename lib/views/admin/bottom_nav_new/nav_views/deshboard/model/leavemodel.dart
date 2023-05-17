class LeaveModel {
  String? image;
  String? name;
  String? classs;
  String? firstDate;
  String? lastDate;

  LeaveModel(
      {this.classs, this.firstDate, this.image, this.lastDate, this.name});
}

List<LeaveModel> leaveDataInfo = [
  LeaveModel(
    classs: "CL - 2",
    firstDate: "5-Jul-23",
    image: "images/man_1.png",
    lastDate: "10-Dec-23",
    name: "Abdur Rohman",
  ),
  LeaveModel(
    classs: "CL - 3",
    firstDate: "12-Jan-23",
    image: "images/man_3.png",
    lastDate: "15-Jul-23",
    name: "Frabi islam",
  ),
  LeaveModel(
    classs: "CL - 3",
    firstDate: "7-Apr-23",
    image: "images/man_2.png",
    lastDate: "15-Oct-23",
    name: "Samiul Ali",
  ),
  LeaveModel(
    classs: "CL - 5",
    firstDate: "5-Jul-23",
    image: "images/person.png",
    lastDate: "10-Dec-23",
    name: "Jahid Hasan",
  ),
];
