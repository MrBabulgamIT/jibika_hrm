
import 'dart:convert';

OnBoardingModel onBoardingModelFromJson(String str) =>
    OnBoardingModel.fromJson(json.decode(str));

String onBoardingModelToJson(OnBoardingModel data) =>
    json.encode(data.toJson());

class OnBoardingModel {
  OnBoardingModel({
    this.program,
    this.version,
    this.release,
    this.datetime,
    this.status,
    this.code,
    this.message,
    this.error,
    this.data,
  });

  String? program;
  String? version;
  String? release;
  String? datetime;
  String? status;
  String? code;
  dynamic message;
  dynamic error;
  List<Datum>? data;

  factory OnBoardingModel.fromJson(Map<String, dynamic> json) =>
      OnBoardingModel(
        program: json["program"],
        version: json["version"],
        release: json["release"],
        datetime: json["datetime"],
        status: json["status"],
        code: json["code"],
        message: json["message"],
        error: json["error"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "program": program,
        "version": version,
        "release": release,
        "datetime": datetime,
        "status": status,
        "code": code,
        "message": message,
        "error": error,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };

  @override
  String toString() {
    return 'OnBoardingModel(program: $program, version: $version, release: $release, datetime: $datetime, status: $status, code: $code, message: $message, error: $error, data: $data)';
  }
}

class Datum {
  Datum({
    this.empCode,
    this.englishDesc,
    this.imgPath,
    this.dbServer,
    this.dbUser,
    this.dbPassword,
    this.cmsDb,
    this.jpDb,
  });

  int? empCode;
  String? englishDesc;
  String? imgPath;
  dynamic dbServer;
  dynamic dbUser;
  dynamic dbPassword;
  dynamic cmsDb;
  dynamic jpDb;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    empCode: json["empcode"],
    englishDesc: json["englishDesc"],
    imgPath: json["imgPath"],
    dbServer: json["dbServer"],
    dbUser: json["dbUser"],
    dbPassword: json["dbPassword"],
    cmsDb: json["cmsDb"],
    jpDb: json["jpDb"],
  );

  Map<String, dynamic> toJson() => {
    "empcode": empCode,
    "englishDesc": englishDesc,
    "imgPath": imgPath,
    "dbServer": dbServer,
    "dbUser": dbUser,
    "dbPassword": dbPassword,
    "cmsDb": cmsDb,
    "jpDb": jpDb,
  };

  @override
  String toString() {
    return 'Datum(empcode: $empCode, englishDesc: $englishDesc, imgPath: $imgPath, dbServer: $dbServer, dbUser: $dbUser, dbPassword: $dbPassword, cmsDb: $cmsDb, jpDb: $jpDb)';
  }
}
