import 'package:budget_buddy/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
        child: TextButton(
          onPressed: () {
            Get.toNamed(Routes.HOME);
          },
          child: Text("Home Screen"),
        ),
      )),
    );
  }
}
