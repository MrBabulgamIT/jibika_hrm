
import 'dart:convert';

ResetPasswordModel resetPasswordFromJson(String str) =>
    ResetPasswordModel.fromJson(json.decode(str));

String resetPasswordToJson(ResetPasswordModel data) =>
    json.encode(data.toJson());

class ResetPasswordModel {
  ResetPasswordModel({
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
  dynamic data;

  factory ResetPasswordModel.fromJson(Map<String, dynamic> json) =>
      ResetPasswordModel(
          program: json["program"],
          version: json["version"],
          release: json["release"],
          datetime: json["datetime"],
          status: json["status"],
          code: json["code"],
          message: json["message"],
          error: json["error"],
          data: json["data"]
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
      "data": data,
      };

  @override
  String toString() {
    return 'VerifyOtpModel(program: $program, version: $version, release: $release, datetime: $datetime, status: $status, code: $code, message: $message, error: $error, data: $data)';
  }
}

