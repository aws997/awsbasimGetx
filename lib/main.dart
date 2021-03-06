import 'package:aw_basim_flutter/app/modules/App/bindings/app_binding.dart';
import 'package:aw_basim_flutter/app/modules/App/views/app_view.dart';
import 'package:aw_basim_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:aw_basim_flutter/app/modules/home/views/home_view.dart';
import 'package:aw_basim_flutter/app/routes/app_pages.dart';
import 'package:aw_basim_flutter/app/utils/translations_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(
    GetMaterialApp(
translations: TransUtils(),
       theme: ThemeData(
      
    
      primaryColor: Colors.white ,
    accentColor: Colors.blue,
    backgroundColor: Colors.grey[300]
    ),
 darkTheme:  ThemeData.dark().
 copyWith(
       backgroundColor:Colors.grey[900]

 ),

      home: AppView(),
      getPages: AppPages.routes,
      
      debugShowCheckedModeBanner: false,
      locale: Locale('ar','IQ'),
      initialBinding: AppBinding(),
    )
  );
}



