import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/common/widgets/login_signup_btn_widget.dart';
import 'package:mshop/screens/login_screen.dart';
import 'package:mshop/screens/sign_up_screen.dart';
import 'package:mshop/utils/constants/images.dart';
import 'package:mshop/utils/constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: kToolbarHeight + 10,
            ),
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            const Text('Buy Any Items From Using App'),
            Image.asset(Images.kWelcomeImage),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButtonWidget(
                  asset: Images.kFacebookLogo,
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                SocialButtonWidget(
                  asset: Images.kGoogleLogo,
                ),
              ],
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            LoginSingUpBtnWidget(
              text: 'Login',
              onPressed: () {
                Get.to(const LoginScreen());
              },
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            LoginSingUpBtnWidget(
              text: 'SignUp',
              onPressed: () {
                Get.to(const SignUpScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SocialButtonWidget extends StatelessWidget {
  const SocialButtonWidget(
      {super.key,
      required this.asset,
      this.height = 25,
      this.width = 25,
      this.outerRadius = 22,
      this.innerRadius = 20});
  final String asset;
  final double width, height;
  final double outerRadius, innerRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: outerRadius,
      backgroundColor: Colors.black.withOpacity(0.1),
      child: CircleAvatar(
        maxRadius: innerRadius,
        backgroundColor: Colors.white,
        child: Image.asset(
          asset,
          width: width,
          height: height,
        ),
      ),
    );
  }
}
