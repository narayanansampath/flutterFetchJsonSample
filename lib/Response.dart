// To parse this JSON data, do
//
//     final response = responseFromJson(jsonString);

import 'dart:convert';

List<Response> responseFromJson(String str) => List<Response>.from(json.decode(str).map((x) => Response.fromJson(x)));

String responseToJson(List<Response> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Response {
  String id;
  int index;
  String guid;
  bool isActive;
  String balance;
  String picture;
  int age;
  String eyeColor;
  Name name;
  String company;
  String email;
  String phone;
  String address;
  String about;
  String registered;
  String latitude;
  String longitude;
  List<String> tags;
  List<int> range;
  List<Friend> friends;
  String greeting;
  String favoriteFruit;

  Response({
    this.id,
    this.index,
    this.guid,
    this.isActive,
    this.balance,
    this.picture,
    this.age,
    this.eyeColor,
    this.name,
    this.company,
    this.email,
    this.phone,
    this.address,
    this.about,
    this.registered,
    this.latitude,
    this.longitude,
    this.tags,
    this.range,
    this.friends,
    this.greeting,
    this.favoriteFruit,
  });

  factory Response.fromJson(Map<String, dynamic> json) => Response(
    id: json["_id"],
    index: json["index"],
    guid: json["guid"],
    isActive: json["isActive"],
    balance: json["balance"],
    picture: json["picture"],
    age: json["age"],
    eyeColor: json["eyeColor"],
    name: Name.fromJson(json["name"]),
    company: json["company"],
    email: json["email"],
    phone: json["phone"],
    address: json["address"],
    about: json["about"],
    registered: json["registered"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    tags: List<String>.from(json["tags"].map((x) => x)),
    range: List<int>.from(json["range"].map((x) => x)),
    friends: List<Friend>.from(json["friends"].map((x) => Friend.fromJson(x))),
    greeting: json["greeting"],
    favoriteFruit: json["favoriteFruit"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "index": index,
    "guid": guid,
    "isActive": isActive,
    "balance": balance,
    "picture": picture,
    "age": age,
    "eyeColor": eyeColor,
    "name": name.toJson(),
    "company": company,
    "email": email,
    "phone": phone,
    "address": address,
    "about": about,
    "registered": registered,
    "latitude": latitude,
    "longitude": longitude,
    "tags": List<dynamic>.from(tags.map((x) => x)),
    "range": List<dynamic>.from(range.map((x) => x)),
    "friends": List<dynamic>.from(friends.map((x) => x.toJson())),
    "greeting": greeting,
    "favoriteFruit": favoriteFruit,
  };
}

class Friend {
  int id;
  String name;

  Friend({
    this.id,
    this.name,
  });

  factory Friend.fromJson(Map<String, dynamic> json) => Friend(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Name {
  String first;
  String last;

  Name({
    this.first,
    this.last,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    first: json["first"],
    last: json["last"],
  );

  Map<String, dynamic> toJson() => {
    "first": first,
    "last": last,
  };
}
