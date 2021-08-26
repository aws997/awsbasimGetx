import 'package:aw_basim_flutter/app/modules/home/bindings/home_binding.dart';
import 'package:aw_basim_flutter/app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

import 'package:aw_basim_flutter/app/modules/Account/bindings/account_binding.dart';
import 'package:aw_basim_flutter/app/modules/Account/views/account_view.dart';
import 'package:aw_basim_flutter/app/modules/App/bindings/app_binding.dart';
import 'package:aw_basim_flutter/app/modules/App/views/app_view.dart';


class AppPages {
  AppPages._();

  static const INITIAL = '/';

  static final routes = [
    GetPage(
      name: '/',
      page: () => AppView(),
      binding: AppBinding(),
    ),
      GetPage(
      name: '/home',
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/account',
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
  ];
}
