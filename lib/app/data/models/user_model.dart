class User {
  String? name;
  String? image;

  User({this.name, this.image});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}
