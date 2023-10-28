import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String? fullName;
  String? email;
  String? phoneNumber;
  String? country;
  String? city;
  String? address;
  String? postcode;

  UserModel({
    this.fullName,
    this.email,
    this.phoneNumber,
    this.country,
    this.city,
    this.address,
    this.postcode,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      fullName: json["fullName"],
      email: json["email"],
      phoneNumber: json["phoneNumber"],
      country: json["country"],
      city: json["city"],
      address: json["address"],
      postcode: json["postcode"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "fullName": fullName,
      "email": email,
      "phoneNumber": phoneNumber,
      "country": country,
      "city": city,
      "address": address,
      "postcode": postcode,
    };
  }
}
