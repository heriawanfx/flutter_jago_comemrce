class AuthResponseModel {
  String? jwtToken;
  UserResponseModel? user;

  AuthResponseModel({this.jwtToken, this.user});

  AuthResponseModel.fromJson(Map<String, dynamic> json) {
    jwtToken = json["jwt-token"];
    user = json["user"] == null ? null : UserResponseModel.fromJson(json["user"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["jwt-token"] = jwtToken;
    if (user != null) {
      json["user"] = user?.toJson();
    }
    return json;
  }
}

class UserResponseModel {
  int? id;
  String? name;
  String? role;

  UserResponseModel({this.id, this.name, this.role});

  UserResponseModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    role = json["role"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["id"] = id;
    json["name"] = name;
    json["role"] = role;
    return json;
  }
}
