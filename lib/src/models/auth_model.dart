import 'dart:convert';

class AuthModel {
  final String accessToken;

  AuthModel({
    required this.accessToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': accessToken,
    };
  }

  factory AuthModel.froMap(Map<String, dynamic> map) {
    return AuthModel(
      accessToken: (map['access_token'] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthModel.fromJson(String source) =>
      AuthModel.froMap(json.decode(source) as Map<String, dynamic>);
}
