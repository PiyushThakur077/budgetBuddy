import 'package:budget_buddy/app/data/colors.dart';
import 'package:budget_buddy/app/utils/text_style.dart';
import 'package:budget_buddy/app/widget/app_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guest_controller.dart';

class GuestView extends GetView<GuestController> {
  const GuestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/login_background.png",
            height: Get.height,
            width: Get.width,
            fit: BoxFit.fill,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(20),
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text('Starting As Guest',
                          style: AppTextStyle.boldStyle(
                              color: AppColors.white, fontSize: 21)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Center(
                        child: Text(
                            'During guest mode app will save your data on your device. App itself will not be responsible for any data loss',
                            textAlign: TextAlign.center,
                            style: AppTextStyle.regularStyle(
                                color: AppColors.white, fontSize: 15)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppButton(
                      title: 'Continue',
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(vertical: 20),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
