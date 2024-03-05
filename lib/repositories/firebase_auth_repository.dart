import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mshop/screens/login_screen.dart';
import 'package:mshop/screens/sign_up_screen.dart';
import 'package:mshop/utils/helpers/helper_functions.dart';

class FirebaseAuthRepository extends GetxController {
  static FirebaseAuthRepository get instance => Get.find();

  ///variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      deviceStorage.writeIfNull('IsFistTime', true);
      deviceStorage.read('IsFistTime') != true
          ? Get.offAll(() => const LoginScreen())
          : Get.offAll(const SignUpScreen());
    }
  }

  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw THelperFunctions.getFirebaseErrorMessage(e.code);
    } on FirebaseException catch (e) {
      throw THelperFunctions.getFirebaseErrorMessage(e.code);
    } catch (e) {
      throw 'Something went wrong.Please try again';
    }
  }
}
