import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/screens/welcome_screen.dart';
import 'package:mshop/utils/constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MShop',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: bgColor,
          fontFamily: 'Gordita',
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black54)),
          iconTheme: const IconThemeData(color: Colors.black54)),
      home: const WelcomeScreen(),
    );
  }
}
