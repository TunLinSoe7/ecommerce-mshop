import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mshop/common/widgets/login_signup_btn_widget.dart';
import 'package:mshop/common/widgets/text_from_field_widget.dart';
import 'package:mshop/controllers/sign_up_controller.dart';
import 'package:mshop/screens/login_screen.dart';
import 'package:mshop/utils/constants/colors.dart';
import 'package:mshop/utils/constants/sizes.dart';
import 'package:mshop/utils/validators/validators.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    return Form(
      key: controller.signupFormKey,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bgColor,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black54,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SignUp',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                const Text('Welcome To MShop'),
                const SizedBox(
                  height: defaultPadding + 10,
                ),

                /// Username
                TextFormFieldWidget(
                  validator: (value) =>
                      Validators.validateEmptyText('Username', value),
                  controller: controller.userName,
                  labelText: 'Username',
                  prefixIcon: Icons.person_outline,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),

                /// Email
                TextFormFieldWidget(
                  validator: (value) => Validators.validateEmail(value),
                  controller: controller.email,
                  labelText: 'E-mail',
                  prefixIcon: Icons.mail_outline_outlined,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),

                /// Phone
                TextFormFieldWidget(
                  validator: (value) => Validators.validatePhoneNumber(value),
                  controller: controller.phoneNumber,
                  labelText: 'Phone',
                  prefixIcon: Icons.phone_android,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),

                /// Password
                Obx(() {
                  return TextFormFieldWidget(
                    obscureText: controller.hidePassword.value,
                    validator: (value) => Validators.validatePassword(value),
                    controller: controller.password,
                    labelText: 'Password',
                    prefixIcon: Icons.password,
                    suffixIcon: InkWell(
                        onTap: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        child: Icon(controller.hidePassword.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye)),
                  );
                }),
                const SizedBox(
                  height: defaultPadding,
                ),
                LoginSingUpBtnWidget(
                    onPressed: () {
                      controller.signUp();
                    },
                    text: 'Create an account'),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('I have already an account?'),
                    TextButton(
                      onPressed: () {
                        Get.to(const LoginScreen());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
