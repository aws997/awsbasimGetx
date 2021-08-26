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
     backgroundColor: Theme.of(context).backgroundColor,
    appBar: AppBar(
      actions: [
        TextButton(onPressed: (){
          if(Get.isDarkMode)
          Get.changeThemeMode(ThemeMode.light);
          else
           Get.changeThemeMode(ThemeMode.dark);
        }
        , child: Text("Dark Mode".tr)),

            TextButton(onPressed: (){
       controller.changeLang();
        }
        , child: Obx(()=> Text(controller.selectedLanguage.value)))
      ],
      bottom: TabBar(
        isScrollable: true,
        tabs: [
          Tab(text: "all".tr,),
             Tab(text: "lessons".tr,),
          Tab(text: "live".tr,),
          Tab(text: "homeworks".tr,),
          Tab(text: "tests".tr,),

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
