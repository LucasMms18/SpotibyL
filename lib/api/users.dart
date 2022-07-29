import 'address.dart';

class User {
  String? fullName;
  String? mobilePhone;
  String? federalTax;
  String? firstName;
  String? lastName;
  String? image;

  Address? address;

  String getFullName() => "$firstName $lastName";

  User(
      {this.fullName,
      this.mobilePhone,
      this.federalTax,
      this.address,
      this.firstName,
      this.lastName,
      this.image});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        fullName: json["fullName"],
        mobilePhone: json["mobilePhone"],
        federalTax: json["federalTax"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        image: json["picUser"],
        address: json["address"] != null ? Address.fromJson(json["address"]) : null);
  }

  Map<String, dynamic> toJson() {
    return {
      "fullName": this.fullName,
      "mobilePhone": this.mobilePhone,
      "federalTax": this.federalTax,
      "address": this.address,
      "firstName": this.firstName,
      "lastName": this.lastName,
      "picUser": this.image
    };
  }
}
