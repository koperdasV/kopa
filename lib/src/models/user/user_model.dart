import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel{
  const UserModel._();
  const factory UserModel({
   required String id,
  required String name,
  required String surname,
  required String phone,
  required String photo,
  required String city,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  static UserModel fromSnapshot(DocumentSnapshot snap) {
    UserModel user = UserModel(
      id: snap.id,
      name: snap['name'],
      surname: snap['surname'],
      phone: snap['phone'],
      photo: snap['photo'],
      city: snap['city'],
    );
    return user;
  }

}
