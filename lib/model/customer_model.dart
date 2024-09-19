import 'dart:convert';

class CustomerDataModel {
  CustomerData customerdata;

  CustomerDataModel({
    required this.customerdata,
  });

  factory CustomerDataModel.fromRawJson(String str) =>
      CustomerDataModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerDataModel.fromJson(Map<String, dynamic> json) =>
      CustomerDataModel(
        customerdata: CustomerData.fromJson(json["customerdata"]),
      );

  Map<String, dynamic> toJson() => {
        "customerdata": customerdata.toJson(),
      };
}

class CustomerData {
  String id;
  String name;
  String email;
  String mobile;
  String referee;
  String referralCode;
  int status;
  String token;
  int otpverificationstatus;
  int emailverificationstatus;

  CustomerData({
    required this.id,
    required this.name,
    required this.email,
    required this.mobile,
    required this.referee,
    required this.referralCode,
    required this.status,
    required this.token,
    required this.otpverificationstatus,
    required this.emailverificationstatus,
  });

  factory CustomerData.fromRawJson(String str) =>
      CustomerData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerData.fromJson(Map<String, dynamic> json) => CustomerData(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        referee: json["referee"],
        referralCode: json["referral_code"],
        status: json["status"],
        token: json["token"],
        otpverificationstatus: json["otpverificationstatus"],
        emailverificationstatus: json["emailverificationstatus"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "mobile": mobile,
        "referee": referee,
        "referral_code": referralCode,
        "status": status,
        "token": token,
        "otpverificationstatus": otpverificationstatus,
        "emailverificationstatus": emailverificationstatus,
      };
}
