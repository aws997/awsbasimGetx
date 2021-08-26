import 'package:aw_basim_flutter/app/modules/home/models/postModel.dart';
import 'package:aw_basim_flutter/app/modules/home/services/homeService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

HomeService homeService=new HomeService();

Rx<List<PostModel>> posts=Rx<List<PostModel>>([]);

RxString selectedLanguage="AR".obs;
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

  void changeLang(){
  Locale _loc;
    if(selectedLanguage.value=='AR') 
    {
            _loc=Locale('en','US');

      selectedLanguage.value='EN';
    }else
    {      _loc=Locale('ar','IQ');

      selectedLanguage.value='AR';
    }
Get.updateLocale(_loc);
  }
}
