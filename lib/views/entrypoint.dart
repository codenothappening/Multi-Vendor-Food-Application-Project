import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/controllers/tab_index_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: kOffWhite,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black38),
                      selectedIconTheme: const IconThemeData(color: kSecondary),
                      onTap: (value) {
                        controller.SetTabIndex = value;
                      },
                      currentIndex: controller.tabIndex,
                      items: [
                        BottomNavigationBarItem(
                            icon: controller.tabIndex == 0
                                ? Icon(AntDesign.appstore1)
                                : Icon(AntDesign.appstore_o),
                            label: "Home"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search), label: "Search"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.shopping_cart), label: "Cart"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.person), label: "Profile"),
                      ])),
            )
          ],
        ),
      ),
    );
  }
}
