import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  String? id;
  String? name;
  String? surname;
  String? phone;
  String? photo;
  String? city;
  String? email;
  String? password;

  UserModel({
    this.id,
    this.name,
    this.surname,
    this.phone,
    this.photo,
    this.city,
    this.email,
    this.password,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        surname,
        phone,
        photo,
        city,
        email,
        password,
      ];

  UserModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    surname = json['surname'];
    phone = json['phone'];
    photo = json['photo'];
    city = json['city'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['surname'] = surname;
    map['phone'] = phone;
    map['photo'] = photo;
    map['city'] = city;
    map['email'] = email;
    map['password'] = password;
    return map;
  }
}
