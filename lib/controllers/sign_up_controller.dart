import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mshop/repositories/firebase_auth_repository.dart';
import 'package:mshop/utils/loaders/loaders.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  ///variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final _authRepo = Get.put(FirebaseAuthRepository());
  final userName = TextEditingController(); //controller for userName input
  final phoneNumber =
      TextEditingController(); //controller for phoneNumber input
  final email = TextEditingController(); //controller for email input
  final password = TextEditingController(); //controller for password input
  GlobalKey<FormState> signupFormKey =
      GlobalKey<FormState>(); // form key for validation

  /// --signup
  Future<void> signUp() async {
    try {
      if (signupFormKey.currentState!.validate()) return;
      await _authRepo.registerWithEmailAndPassword(
          email.text.trim(), password.text.trim());
      Loaders.successSnackBar(
          title: 'Success!', message: 'Account create successfully!');
      FirebaseAuthRepository.instance.screenRedirect();
    } catch (e) {
      Loaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    } finally {}
  }
}
