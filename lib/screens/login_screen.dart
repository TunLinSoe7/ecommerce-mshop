import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/common/widgets/login_signup_btn_widget.dart';
import 'package:mshop/common/widgets/text_from_field_widget.dart';
import 'package:mshop/screens/sign_up_screen.dart';
import 'package:mshop/utils/constants/colors.dart';
import 'package:mshop/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
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
                  'Login',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                const Text('Welcome Back To MShop App'),
                const SizedBox(
                  height: defaultPadding + 10,
                ),
                const TextFormFieldWidget(
                  labelText: 'E-mail',
                  prefixIcon: Icons.mail_outline_outlined,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const TextFormFieldWidget(
                    labelText: 'Password',
                    prefixIcon: Icons.password_outlined,
                    suffixIcon: Icon(Icons.visibility)),
                const SizedBox(
                  height: defaultPadding,
                ),
                const LoginSingUpBtnWidget(text: 'Login'),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () {
                        Get.to(const SignUpScreen());
                      },
                      child: const Text(
                        'Create an account',
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
