import 'package:aw_basim_flutter/app/modules/home/models/postModel.dart';
import 'package:aw_basim_flutter/app/modules/home/services/homeService.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

HomeService homeService=new HomeService();

Rx<List<PostModel>> posts=Rx<List<PostModel>>([]);

  @override
  void onInit() {
    super.onInit();
 posts.value=homeService.getHome();
 
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
