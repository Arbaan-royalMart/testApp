import 'dart:convert';

List<Editor> editorFromJson(String str) =>
    List<Editor>.from(json.decode(str).map((x) => Editor.fromJson(x)));

String editorToJson(List<Editor> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Editor {
  int userId;
  int id;
  String title;
  String body;

  Editor({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Editor.fromJson(Map<String, dynamic> json) => Editor(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
