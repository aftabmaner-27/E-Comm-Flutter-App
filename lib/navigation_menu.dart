import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_com_app/utils/constants/colors.dart';
import 'package:e_com_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'NavigationController.dart';
import 'features/shop/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  final NavigationController navController = Get.put(NavigationController());
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunction.isDarkMode(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      bottomNavigationBar: Obx(() => CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: navController.pageIndex.value,
        items: <Widget>[
          Icon(Iconsax.home, size: 30,color: Colors.white),
          Icon(Iconsax.shop, size: 30,color: Colors.white),
          Icon(Iconsax.heart_circle, size: 30, color: Colors.white),
          Icon(Iconsax.heart, size: 30,color: Colors.white),
          Icon(Iconsax.user, size: 30,color: Colors.white),
        ],
        color: TColors.primary,
        buttonBackgroundColor: TColors.primary,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 200),
        onTap: navController.changePage,
        letIndexChange: (index) => true,
      )),

      body: Obx(() {
        Widget currentPage;
        switch (navController.pageIndex.value) {
          case 0:
            currentPage = HomeScreen();
            break;
          case 1:
            currentPage = Container(color: Colors.green);
            break;
          case 2:
            currentPage = Container(color: Colors.white);
            break;
          case 3:
            currentPage = Container(color: Colors.orange);
            break;
          case 4:
            currentPage = Container(color: Colors.blueAccent);
            break;
          default:
            currentPage = Container(color: Colors.white);
        }
        return currentPage;
      }),

    );
  }
}
