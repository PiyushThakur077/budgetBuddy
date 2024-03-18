import 'package:budget_buddy/app/data/colors.dart';
import 'package:budget_buddy/app/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 12,
                ),
                Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Image.asset(
                      'assets/images/avatar.png',
                      height: 29,
                    )),
                Expanded(
                    child: Text(
                  'Hi Guest458',
                  style: AppTextStyle.boldStyle(
                      fontSize: 19, color: AppColors.black),
                )),
                Stack(
                  children: [
                    Image.asset(
                      'assets/images/notification.png',
                      color: AppColors.black,
                      height: 26,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 14),
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(children: [
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 152,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Image.asset(
                      'assets/images/image.png',
                      height: 152,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'March Records',
                                style: AppTextStyle.semiBoldStyle(
                                    fontSize: 14, color: AppColors.white),
                              ),
                            ),
                            Text(
                              'Hide Balance',
                              style: AppTextStyle.mediumStyle(
                                  fontSize: 12,
                                  color: AppColors.white,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                        Divider(
                          height: 20,
                          color: AppColors.white,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Center(
                          child: Text(
                            'Total Balance',
                            style: AppTextStyle.mediumStyle(
                                fontSize: 16, color: AppColors.white),
                          ),
                        ),
                        Center(
                          child: Text(
                            '\$652,023.36',
                            style: AppTextStyle.boldStyle(
                                fontSize: 26, color: AppColors.white),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: AppColors.greyshadecolor,
                                  offset: Offset(0, 1))
                            ]),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Income',
                                    style: AppTextStyle.semiBoldStyle(
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '\$738,560',
                                    style: AppTextStyle.semiBoldStyle(
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/income.png',
                              height: 41,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  color: AppColors.greyshadecolor,
                                  offset: Offset(0, 1))
                            ]),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Income',
                                    style: AppTextStyle.semiBoldStyle(
                                        fontSize: 12),
                                  ),
                                  Text(
                                    '\$738,560',
                                    style: AppTextStyle.semiBoldStyle(
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/images/income.png',
                              height: 41,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Text('Transactions',
                          style: AppTextStyle.semiBoldStyle(
                              fontSize: 16, color: AppColors.black)),
                    ),
                    Text('See All',
                        style: AppTextStyle.mediumStyle(
                            fontSize: 12,
                            color: AppColors.black,
                            decoration: TextDecoration.underline)),
                  ],
                ),
              ),
              ListView.separated(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Row(
                        children: [
                          Image.asset(
                            'assets/images/${controller.transactions[index].image}.png',
                            height: 41,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.transactions[index].title!,
                                  style: AppTextStyle.semiBoldStyle(
                                      fontSize: 15, color: AppColors.black),
                                ),
                                Text(
                                  controller.transactions[index].subtitle!,
                                  style: AppTextStyle.regularStyle(
                                      fontSize: 15,
                                      color: AppColors.black.withOpacity(0.7)),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            controller.transactions[index].amount!,
                            style: AppTextStyle.semiBoldStyle(
                                fontSize: 15,
                                color: controller.transactions[index].isIncome!
                                    ? Colors.green
                                    : Colors.red),
                          ),
                        ],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 20,
                      ),
                  itemCount: controller.transactions.length)
            ]),
          )
        ],
      ),
    ));
  }
}
