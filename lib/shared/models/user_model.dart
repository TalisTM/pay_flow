import 'dart:convert';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, this.photoURL});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['protoURL']);
  }

  factory UserModel.fromJson(String json) =>
    UserModel.fromMap(jsonDecode(json));

  Map<String, dynamic> toMap() => {
    "name" : name,
    "protoURL" : photoURL
  };

  String toJson() => jsonEncode(toMap());
}