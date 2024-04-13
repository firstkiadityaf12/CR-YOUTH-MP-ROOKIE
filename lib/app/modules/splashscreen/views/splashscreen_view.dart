import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:milestone_4/app/theme/color.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.SEARCH_PAGE);
    }));
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: Image.asset(
        'assets/images/logo/popcorn.png',
        scale: 2,
      )),
    );
  }
}
