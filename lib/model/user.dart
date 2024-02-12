import 'dart:convert';



class User {
  int userId;
  int id;
  String title;
  bool completed;
  //static int NumUsers = 0;

  User({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });
  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}

