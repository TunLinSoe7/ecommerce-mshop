import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mshop/screens/login_screen.dart';
import 'package:mshop/utils/constants/images.dart';
import 'package:mshop/utils/constants/sizes.dart';
import 'package:mshop/utils/constants/texts.dart';
import 'package:mshop/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              ///Image
              Lottie.asset(Images.onBoardingImage2,
                  width: THelperFunctions.screenWidth() * 0.6),
              const SizedBox(
                height: defaultPadding,
              ),

              ///Title & SubTitle
              Text(
                TTexts.yourAccountCreateTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                TTexts.yourAccountCreateSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  child: const Text(TTexts.tContinue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
