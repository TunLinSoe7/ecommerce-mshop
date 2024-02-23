import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';

class BottomNavigationController extends GetxController {
  Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.grey,
    ),
    Container(
      color: Colors.black,
    )
  ];
}
