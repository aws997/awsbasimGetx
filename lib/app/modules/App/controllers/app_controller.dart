import 'package:aw_basim_flutter/app/modules/Account/views/account_view.dart';
import 'package:aw_basim_flutter/app/modules/home/views/home_view.dart';
import 'package:aw_basim_flutter/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
   

RxInt page=1.obs;
List<Widget> pages=[
AccountView(),



HomeView(),

Container(),


];  
  @override
  void onInit() {
    super.onInit();
    
  }

  @override
  void onReady() {
    super.onReady();
  }

  goToPage(int _page){
page.value=_page;
  }

  @override
  void onClose() {}

}
