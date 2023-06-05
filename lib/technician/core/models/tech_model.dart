class TechModel {
  String? id;
  String? profileImg;
  String? firstName;
  String? lastName;
  String? email;

  TechModel(
      {this.id, this.profileImg, this.firstName, this.lastName, this.email});

  TechModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profileImg = json['profileImg'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['profileImg'] = profileImg;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    return data;
  }
}
