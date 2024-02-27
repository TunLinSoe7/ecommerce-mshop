import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THelperFunctions {
  THelperFunctions._();

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'))
            ],
          );
        });
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static getFirebaseErrorMessage(String errorMessage) {
    switch (errorMessage) {
      case 'ERROR_EMAIL_ALREADY_IN_USE':
        return "Email already used.Go to login page";
      case 'account-exists-with-different-credential':
        return "Email already used.Go to login page";
      case 'email-already-in-use':
        return "Email already used.Go to login page";
      case 'ERROR_WRONG_PASSWORD':
        return "Wrong Password!";
      case 'wrong-password':
        return "Wrong Password!";
      case 'ERROR_USER_NOT_FOUND':
        return "No user found with this email";
      case 'user-not-found':
        return "No user found with this email";
      case 'ERROR_USER_DISABLED':
        return "User disabled";
      case 'user-disabled':
        return "User Disabled";
      case 'ERROR_TOO_MANY_REQUESTS':
        return "Too many requests,Try aging later.";
      case 'too-many-requests':
        return "Too many requests,Try aging later.";
      case "operation-not-allowed":
        return "Email/password accounts are not enabled.";
      case 'ERROR_OPERATION_NOT_ALLOWED':
        return "Email/password accounts are not enabled.";
      case 'ERROR_INVALID_EMAIL':
        return 'Email address is invalid';
      case 'invalid-email':
        return 'Email address is invalid';
      default:
        return 'Login failed,Please try again';
    }
  }
}
