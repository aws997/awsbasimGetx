import 'package:aw_basim_flutter/app/modules/home/models/postModel.dart';

class HomeService {
  List<PostModel> getHome() {
    var mockData = [
      
        {
          "LessonNumber": 12,
          "title": 'موضوع الدرس',
          "senderName": "أسم المرسل",
          "Picture": "assets/lessonphoto.png",
          "likes": 942,
          "comments": 346,
          "views": 120,
          "profilePic": "asdsad"
        },
        {
          "LessonNumber": 13,
          "title": 'موضوع الدرس',
          "senderName": "أوس باسم",
          "likes": 942,
          "comments": 346,
          "views": 120,
          "profilePic": "asdsad"
        }
      
    ];

    List<PostModel> _posts=mockData.map((e) =>PostModel.fromJson(e) ).toList();
    return _posts;
  }
}
