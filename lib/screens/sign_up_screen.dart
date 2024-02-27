import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/common/widgets/login_signup_btn_widget.dart';
import 'package:mshop/common/widgets/text_from_field_widget.dart';
import 'package:mshop/screens/login_screen.dart';
import 'package:mshop/utils/constants/colors.dart';
import 'package:mshop/utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                const TextFormFieldWidget(
                  labelText: 'Name',
                  prefixIcon: Icons.person_outline,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const TextFormFieldWidget(
                  labelText: 'E-mail',
                  prefixIcon: Icons.mail_outline_outlined,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const TextFormFieldWidget(
                  labelText: 'Phone',
                  prefixIcon: Icons.phone_android,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const TextFormFieldWidget(
                  labelText: 'Password',
                  prefixIcon: Icons.password,
                  suffixIcon: Icon(Icons.visibility),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const LoginSingUpBtnWidget(text: 'Create an account'),
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
