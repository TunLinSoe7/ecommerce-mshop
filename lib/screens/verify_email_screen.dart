import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mshop/screens/login_screen.dart';
import 'package:mshop/screens/success_screen.dart';
import 'package:mshop/utils/constants/images.dart';
import 'package:mshop/utils/constants/sizes.dart';
import 'package:mshop/utils/constants/texts.dart';
import 'package:mshop/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => Get.offAll(const LoginScreen()),
              icon: const Icon(Icons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
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
                TTexts.comFirmEmailTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),

              ///mail
              const Text(
                'tunlinsoe422@gmail.com',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                TTexts.comFirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: defaultPadding,
              ),

              ///Button
              InkWell(
                onTap: () {
                  Get.to(const SuccessScreen());
                },
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      THelperFunctions.navigateToScreen(
                          context, const SuccessScreen());
                    },
                    child: const Text(TTexts.tContinue),
                  ),
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              const Text(
                TTexts.resendEmail,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
