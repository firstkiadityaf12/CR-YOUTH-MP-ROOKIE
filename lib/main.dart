import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:milestone_4/app/theme/color.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      theme: new ThemeData(scaffoldBackgroundColor: backgroundColor),
      getPages: AppPages.routes,
    ),
  );
}
