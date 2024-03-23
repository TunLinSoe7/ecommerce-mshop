import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mshop/common/widgets/app_bar_widget.dart';
import 'package:mshop/controllers/detail_controller.dart';
import 'package:mshop/data/models/product_model.dart';
import 'package:mshop/shimmers/shimmer_effect.dart';
import 'package:mshop/utils/constants/colors.dart';
import 'package:mshop/utils/constants/sizes.dart';
import 'package:mshop/utils/constants/texts.dart';

class ProductDetailScreen extends StatelessWidget {
  final String id;
  final ProductModel productModel;

  const ProductDetailScreen({
    super.key,
    required this.id,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductDetailController(id));
    return Scaffold(
      backgroundColor: bgColor,
      appBar: CustomAppBar(
        onPressed: () {
          Get.back();
        },
        leadingIcon: Icons.arrow_back,
        trailingIcon: Iconsax.heart,
        isTitleShow: false,
      ),
      body: Obx(() {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                controller.isLoading.value
                    ? ShimmerEffect(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.3)
                    : CachedNetworkImage(
                        height: MediaQuery.of(context).size.height * 0.4,
                        fit: BoxFit.cover,
                        imageUrl: controller.productDetail.value?.image ?? ''),
                Container(
                  padding: const EdgeInsets.fromLTRB(defaultPadding,
                      defaultPadding * 2, defaultPadding, defaultPadding),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(defaultBorderRadius * 3),
                          topRight: Radius.circular(defaultBorderRadius * 3))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title and des
                      ProductDetailTitleAndDes(
                          productModel: productModel, controller: controller),
                      const SizedBox(
                        width: 10,
                      ),

                      /// Rating and price
                      ProductDetailRatingAndPrice(controller: controller),
                      const SizedBox(
                        height: defaultPadding,
                      ),

                      /// OrderNow
                      const ProductDetailOrderNowAndAddCartBtn(
                          text: 'Order Now', textColor: Colors.black),
                      const SizedBox(
                        height: defaultPadding,
                      ),

                      ///Add To Cart
                      const ProductDetailOrderNowAndAddCartBtn(
                          text: 'Add To Cart',
                          textColor: Colors.white,
                          bgColor: Colors.black)
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class ProductDetailTitleAndDes extends StatelessWidget {
  const ProductDetailTitleAndDes(
      {super.key, required this.productModel, required this.controller});

  final ProductModel productModel;
  final ProductDetailController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.name ?? '',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Row(
          children: [
            Text("Storage : "),
            Text("6/128"),
          ],
        ),
        ChoiceChipWidget(
          title: 'Storage:',
          itemCount: 1,
          controller: controller,
        ),
        ChoiceChipWidget(
          controller: controller,
          title: 'Color:',
          itemCount: 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Obx(() {
            return Text(
              productModel.description ?? '',
              textAlign: TextAlign.justify,
              style: const TextStyle(color: Colors.black),
            );
          }),
        ),
      ],
    );
  }
}

class ChoiceChipWidget extends StatelessWidget {
  const ChoiceChipWidget({
    super.key,
    required this.title,
    required this.itemCount,
    required this.controller,
  });

  final String title;
  final ProductDetailController controller;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: defaultPadding, bottom: defaultPadding),
          child: Text(title),
        ),
        SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: (_, index) {
              return InkWell(
                onTap: () {
                  controller.toggleIndex(index);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.cyan, width: 2)),
                  child: Center(
                      child: Text(
                    "Green Light",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .apply(color: Colors.black),
                  )),
                ),
              );
            },
            separatorBuilder: (_, int index) => const SizedBox(
              width: 10,
            ),
          ),
        ),
      ],
    );
  }
}

class ProductDetailRatingAndPrice extends StatelessWidget {
  const ProductDetailRatingAndPrice({super.key, required this.controller});

  final ProductDetailController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          width: double.infinity,
          child: Row(
            children: [
              Text(
                '${controller.rating}',
                style: const TextStyle(
                    fontFamily: TTexts.gorditaFont,
                    fontWeight: FontWeight.bold),
              ),
              RatingBar.builder(
                  itemSize: 25,
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  onRatingUpdate: (rating) {
                    controller.rating.value = rating;
                  }),
            ],
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Row(
          children: [
            Text(
              "\$${controller.productDetail.value?.price ?? 0}",
              style: const TextStyle(
                  fontFamily: TTexts.gorditaFont,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                  color: Colors.black54),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "\$${controller.productDetail.value?.price ?? 0}",
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class ProductDetailOrderNowAndAddCartBtn extends StatelessWidget {
  const ProductDetailOrderNowAndAddCartBtn({
    super.key,
    required this.text,
    required this.textColor,
    this.bgColor,
    this.onPressed,
    this.height = 45,
  });

  final String text;
  final Color textColor;
  final Color? bgColor;
  final VoidCallback? onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: double.infinity,
        child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(10), backgroundColor: bgColor),
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )));
  }
}
