import 'package:budget_buddy/app/data/colors.dart';
import 'package:budget_buddy/app/routes/app_pages.dart';
import 'package:budget_buddy/app/utils/text_style.dart';
import 'package:budget_buddy/app/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(
              "assets/images/login_background.png",
            ),
            // Image.asset(
            //   'assets/images/login_background.png',
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView(
                  padding: EdgeInsets.all(20),
                  shrinkWrap: true,
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
                      height: 12,
                    ),
                    Center(
                      child: Text('Budget Buddy'.toUpperCase(),
                          style: AppTextStyle.boldStyle(
                              color: AppColors.white, fontSize: 21)),
                    ),
                    Center(
                      child: Text('Financial Freedom Starts Here'.toUpperCase(),
                          style: AppTextStyle.mediumStyle(
                              color: AppColors.white, fontSize: 10)),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text('Login',
                        style: AppTextStyle.boldStyle(
                            color: AppColors.greeen, fontSize: 30)),
                    Text('Please login to your account',
                        style: AppTextStyle.regularStyle(
                            color: AppColors.primary, fontSize: 15)),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: AppTextStyle.regularStyle(
                          color: AppColors.white, fontSize: 14),
                      decoration: InputDecoration(
                        hintText: 'Enter username',
                        hintStyle: AppTextStyle.regularStyle(
                            color: AppColors.white, fontSize: 14),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.errorColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      style: AppTextStyle.regularStyle(
                          color: AppColors.white, fontSize: 14),
                      decoration: InputDecoration(
                        hintText: 'password',
                        hintStyle: AppTextStyle.regularStyle(
                            color: AppColors.white, fontSize: 14),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.white),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.errorColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: AppButton(
                          title: 'Start As Guest',
                          buttonColor: Colors.transparent,
                          textColor: AppColors.white,
                          borderclr: AppColors.white,
                          onPressed: () {
                            Get.toNamed(Routes.GUEST);
                          },
                          padding: EdgeInsets.zero,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: AppButton(
                          title: 'Login',
                          onPressed: () {
                            Get.toNamed(Routes.BOTTOM_NAV);
                          },
                          padding: EdgeInsets.zero,
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        'Forgot Password?',
                        style: AppTextStyle.mediumStyle(
                            fontSize: 15,
                            color: AppColors.greeen,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            "assets/images/line_left.png",
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Social Login',
                          style: AppTextStyle.semiBoldStyle(
                              fontSize: 15, color: AppColors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Image.asset(
                            "assets/images/line_right.png",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.png",
                          height: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "assets/images/apple.png",
                          height: 60,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have account? ',
                          style: AppTextStyle.semiBoldStyle(
                              fontSize: 15, color: AppColors.white),
                        ),
                        Text(
                          'Sign Up',
                          style: AppTextStyle.semiBoldStyle(
                              fontSize: 15,
                              color: AppColors.greeen,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
