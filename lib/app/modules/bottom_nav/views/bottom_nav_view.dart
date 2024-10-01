import 'package:budget_buddy/app/data/colors.dart';
import 'package:budget_buddy/app/modules/home/views/home_view.dart';
import 'package:budget_buddy/app/utils/text_style.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_nav_controller.dart';

class BottomNavView extends GetView<BottomNavController> {
  const BottomNavView({Key? key}) : super(key: key);
  static final List<Widget> bottomNavigationBarItems = [
    HomeView(),
    Container(),
    Container(),
    Container()   
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
        body:
            bottomNavigationBarItems.elementAt(controller.selectedIndex.value),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppColors.greyshadecolor,
                blurRadius: 6,
              ),
            ],
          ),
          child: BottomAppBar(
            color: Colors.white,
            height: kBottomNavigationBarHeight,
            padding: const EdgeInsets.all(0.0),
            notchMargin: 10,
            elevation: 0.7,
            shape: AutomaticNotchedShape(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                // StadiumBorder(),
              ),
            ),
            clipBehavior: Clip.hardEdge,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildBottomNavItem(0, 'assets/images/home.png', 'HOME'),
                      buildBottomNavItem(
                          1, 'assets/images/report.png', 'REPORT'),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(width: 10),
                      buildBottomNavItem(
                          2, 'assets/images/planning.png', 'PLANNING'),
                      buildBottomNavItem(
                          3, 'assets/images/profile.png', 'PROFILE'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: MediaQuery.of(context).viewInsets.bottom != 0
            ? null
            : floatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget buildBottomNavItem(int index, String iconPath, String label) {
    return Obx(() {
      return InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 25,
              height: 25,
              color: controller.selectedIndex.value == index
                  ? Colors.blue
                  : Colors.grey,
            ),
            Text(
              label,
              style: AppTextStyle.mediumStyle(
                color: controller.selectedIndex.value == index
                    ? Colors.blue
                    : Colors.grey,
                fontWeight: controller.selectedIndex.value == index
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ],
        ),
        onTap: () => controller.onItemTapped(index),
      );
    });
  }

  Widget floatingButton() {
    return Transform(
      transform: Matrix4.identity(),
      child: FloatingActionButton(
        heroTag: "NavBar Button",
        onPressed: () {},
        splashColor: AppColors.greyshadecolor,
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: Icon(Icons.add, color: Colors.white, size: 30)),
      ),
    );
  }

  // Widget subFloatingButton() {
  //   return ScaleTransition(
  //     scale: _animationController,
  //     child: Card(
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(50.0),
  //       ),
  //       elevation: 1,
  //       shadowColor: Colors.grey,
  //       color: Colors.white,
  //       child: Container(
  //         width: Get.width,
  //         margin: const EdgeInsets.symmetric(horizontal: 10),
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Flexible(
  //               child: buildAnimatedFloatingButtons(
  //                   "assets/png/home.png",
  //                   StringResources.createTask.tr,
  //                   RoutesName.managercreateMeeting),
  //             ),
  //             Flexible(
  //               child: buildAnimatedFloatingButtons(
  //                   "assets/png/reqExpenseChart.png",
  //                   (StringResources.requestExpense.tr).capitalize!,
  //                   RoutesName.managerSubmitEditExpense),
  //             ),
  //             Flexible(
  //               child: buildAnimatedFloatingButtons("assets/png/survey.png",
  //                   StringResources.createSurveys.tr, RoutesName.dynamicPage),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // Widget buildAnimatedFloatingButtons(
  //     String iconPath, String label, String routeName) {
  //   return IconButton(
  //     icon: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       // mainAxisSize: MainAxisSize.max,
  //       children: [
  //         pngPicture.asset(
  //           color: Colors.grey,
  //           iconPath,
  //           width: 25,
  //           height: 25,
  //         ),
  //         Text(
  //           label,
  //           style: belowNormalText2().copyWith(color: Colors.grey),
  //           textAlign: TextAlign.center,
  //         ),
  //       ],
  //     ),
  //     onPressed: () {
  //       _toggleFab();
  //       _showOverlay();
  //       Get.toNamed(routeName);
  //     },
  //   );
  // }

  // void _showOverlay() {
  //   if (managerBNBarVM.overlayEntry == null) {
  //     OverlayEntry overlayEntry = OverlayEntry(
  //       builder: (context) => Positioned(
  //         bottom: Get.height * 0.12,
  //         left: 50,
  //         right: 50,
  //         child: subFloatingButton(),
  //       ),
  //     );
  //     managerBNBarVM.overlayEntry = overlayEntry;
  //     Overlay.of(context).insert(overlayEntry);
  //   } else {
  //     managerBNBarVM.removeOverlay();
  //   }
  // }
}
