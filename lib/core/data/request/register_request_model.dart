class RegisterRequestModel {
  String? email;
  String? password;
  String? name;

  RegisterRequestModel({this.email, this.password, this.name});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    email = json["email"];
    password = json["password"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["email"] = email;
    json["password"] = password;
    json["name"] = name;
    return json;
  }
}
