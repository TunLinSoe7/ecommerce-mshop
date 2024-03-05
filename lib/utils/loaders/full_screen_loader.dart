import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/utils/loaders/animation_loader.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => WillPopScope(
            child: Container(
              color: Colors.black54,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  AnimationLoaderWidget(text: text, animation: animation),
                ],
              ),
            ),
            onWillPop: () async {
              return false;
            }));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
