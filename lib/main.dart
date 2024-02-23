import 'package:flutter/material.dart';
import 'package:mshop/constants/colors.dart';
import 'package:mshop/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MShop',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: bgColor,
          fontFamily: 'Gordita',
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.black54)),
          iconTheme: const IconThemeData(color: Colors.black54)),
      home: const NavigationMenu(),
    );
  }
}
