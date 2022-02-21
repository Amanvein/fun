class ProfileModel {
  String? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  ProfileModel({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.status,
  });

  factory ProfileModel.formMap(Map<String, dynamic> map) {
    return ProfileModel(
        id: map["id"].toString(),
        name: map["name"],
        email: map["email"],
        gender: map["gender"],
        status: map["status"]);
  }
}
