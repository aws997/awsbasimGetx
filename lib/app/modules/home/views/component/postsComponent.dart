import 'package:aw_basim_flutter/app/modules/home/models/postModel.dart';
import 'package:aw_basim_flutter/app/modules/home/views/component/postComponent.dart';
import 'package:flutter/material.dart';

class PostsComponent extends StatelessWidget {

final List<PostModel> posts;

  const PostsComponent({required this.posts});   
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: posts.map((e) =>PostComponent(post: e) ).toList(),
    );
  }
}