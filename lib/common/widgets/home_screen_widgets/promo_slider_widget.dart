import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/controllers/banner_controller.dart';
import 'package:mshop/shimmers/shimmer_effect.dart';
import 'package:mshop/utils/constants/sizes.dart';

class PromoSliderWidget extends StatelessWidget {
  const PromoSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Obx(() {
      if (controller.isLoading.value) {
        const ShimmerEffect(
          width: double.infinity,
          height: 70,
        );
      }
      return CarouselSlider.builder(
          itemCount: controller.banners.length,
          itemBuilder: (_, index, realIndex) {
            return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultBorderRadius)),
                margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(defaultBorderRadius),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: '${controller.banners[index].image}',
                    placeholder: (_, url) => const Icon(
                      Icons.shopify_outlined,
                      color: Colors.cyan,
                      size: 50,
                    ),
                  ),
                ));
          },
          options: CarouselOptions(viewportFraction: 1, aspectRatio: 16 / 7));
    });
  }
}
