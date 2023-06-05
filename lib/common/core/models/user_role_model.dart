class UserRoleModel {
  String? id;
  String? role;

  UserRoleModel({this.id, this.role});

  UserRoleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    // ignore: unnecessary_new, prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['role'] = role;
    return data;
  }
}
