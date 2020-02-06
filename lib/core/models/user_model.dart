import 'package:meta/meta.dart';
import 'dart:convert';

class User {
  final String id;
  final String email;
  final String name;

  User({
    @required this.id,
    @required this.email,
    @required this.name,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "name": name,
      };
}
