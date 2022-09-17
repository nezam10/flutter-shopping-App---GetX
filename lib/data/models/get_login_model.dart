class GetLoginModel {
  String? status;
  int? statusCode;
  String? message;
  Data? data;

  GetLoginModel({this.status, this.statusCode, this.message, this.data});

  GetLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_code'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? id;
  String? firstname;
  String? lastname;
  String? email;
  String? employeeId;
  String? picture;
  String? userPictureURL;
  String? powerBy;
  String? currencycode;
  String? currencysign;
  String? servicecharge;
  String? serviceChargeType;
  String? tablemaping;
  String? vat;

  Data(
      {this.id,
      this.firstname,
      this.lastname,
      this.email,
      this.employeeId,
      this.picture,
      this.userPictureURL,
      this.powerBy,
      this.currencycode,
      this.currencysign,
      this.servicecharge,
      this.serviceChargeType,
      this.tablemaping,
      this.vat});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    employeeId = json['employee_id'];
    picture = json['picture'];
    userPictureURL = json['UserPictureURL'];
    powerBy = json['PowerBy'];
    currencycode = json['currencycode'];
    currencysign = json['currencysign'];
    servicecharge = json['servicecharge'];
    serviceChargeType = json['service_chargeType'];
    tablemaping = json['tablemaping'];
    vat = json['vat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstname'] = this.firstname;
    data['lastname'] = this.lastname;
    data['email'] = this.email;
    data['employee_id'] = this.employeeId;
    data['picture'] = this.picture;
    data['UserPictureURL'] = this.userPictureURL;
    data['PowerBy'] = this.powerBy;
    data['currencycode'] = this.currencycode;
    data['currencysign'] = this.currencysign;
    data['servicecharge'] = this.servicecharge;
    data['service_chargeType'] = this.serviceChargeType;
    data['tablemaping'] = this.tablemaping;
    data['vat'] = this.vat;
    return data;
  }
}
