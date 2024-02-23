import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mshop/controllers/bottom_navigation_controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Colors.white,
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Iconsax.home,
                  color: Colors.cyan,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.shop,
                  color: Colors.cyan,
                ),
                label: 'Store'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.heart,
                  color: Colors.cyan,
                ),
                label: 'WishList'),
            NavigationDestination(
                icon: Icon(
                  Iconsax.user,
                  color: Colors.cyan,
                ),
                label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => IndexedStack(
            index: controller.selectedIndex.value,
            children: controller.screens,
          )),
    );
  }
}
