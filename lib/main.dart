import 'package:budget_buddy/app/modules/login/views/login_view.dart';
import 'package:budget_buddy/app/routes/app_pages.dart';
import 'package:budget_buddy/app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      title: 'Budget Buddy',
      initialRoute: AppPages.intial,
      getPages: AppPages.routes,
    );
  }
}
