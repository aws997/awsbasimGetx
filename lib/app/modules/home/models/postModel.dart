import 'dart:convert';

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  PostModel({
    required this.lessonNumber,
        required this.title,

    required this.senderName,
    this.picture,
    required this.likes,
    required this.comments,
    required this.views,
  });

  int lessonNumber;
  String senderName;
    String title;
  String? picture;
  int likes;
  int comments;
  int views;

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        lessonNumber: json["LessonNumber"],
        senderName: json["senderName"],
        picture: json["Picture"],
        likes: json["likes"],
        comments: json["comments"],
        views: json["views"],
                title: json["title"],

      );

  Map<String, dynamic> toJson() => {
        "LessonNumber": lessonNumber,
        "senderName": senderName,
        "Picture": picture,
        "likes": likes,
        "comments": comments,
        "views": views,
      };
}
