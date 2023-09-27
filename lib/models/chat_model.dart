// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

 welcomeFromJson(String str) => ChatModel.fromJson(json.decode(str));

String welcomeToJson(ChatModel data) => json.encode(data.toJson());

class ChatModel {
    String avatar;
    String name;
    bool isGroup;
    String updatedAt;
    String message;
    String status;

    ChatModel({
        required this.avatar,
        required this.name,
        required this.isGroup,
        required this.updatedAt,
        required this.message,
        required this.status,
    });

    factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        avatar: json["avatar"],
        name: json["name"],
        isGroup: json["isGroup"],
        updatedAt: json["updatedAt"],
        message: json["message"],
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "isGroup": isGroup,
        "updatedAt": updatedAt,
        "message": message,
        "status": status,
    };
}
