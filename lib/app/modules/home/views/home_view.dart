import 'package:aw_basim_flutter/app/modules/home/views/component/postsComponent.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
  length: 5,
  child: Scaffold(
    backgroundColor: Colors.grey[300],
    appBar: AppBar(
      bottom: TabBar(
        isScrollable: true,
        tabs: [
          Tab(text: "الكل",),
             Tab(text: "الدروس",),
          Tab(text: "البث المباشر",),
          Tab(text: "الواجبات",),
          Tab(text: "الاختبارات",),

        ],
      ),
      
    ),
    body: TabBarView(children: [
      
            PostsComponent(posts: []),
                  Obx(()=> PostsComponent(posts: controller.posts.value)),

      PostsComponent(posts: []),
      PostsComponent(posts: []),
      PostsComponent(posts: []),

    ],),
  ),
);
  }
}
