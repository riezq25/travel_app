import 'package:travel_app/app/data/models/user_model.dart';

class TravelSpot {
  String? name;
  String? date;
  String? image;
  List<User>? users;

  TravelSpot({this.name, this.date, this.image, this.users});

  TravelSpot.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    image = json['image'];
    if (json['users'] != null) {
      users = <User>[];
      json['users'].forEach((v) {
        users?.add(User.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['date'] = date;
    data['image'] = image;
    if (users != null) {
      data['users'] = users?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
