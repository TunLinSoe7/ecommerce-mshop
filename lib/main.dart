import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mshop/firebase_options.dart';
import 'package:mshop/navigation_menu.dart';
import 'package:mshop/utils/constants/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp(options: firebaseOptions);
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
      home: const NavigationMenu(),
    );
  }
}
