import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mshop/common/widgets/app_bar_widget.dart';
import 'package:mshop/utils/constants/colors.dart';
import 'package:mshop/utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: const CustomAppBar(
        leadingIcon: Icons.arrow_back,
        trailingIcon: Iconsax.heart,
        isTitleShow: false,
      ),
      body: Column(
        children: [
          CachedNetworkImage(
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
              imageUrl:
                  'https://firebasestorage.googleapis.com/v0/b/bazar-d9951.appspot.com/o/Stylish_blue_plaid_shirt_for_men_-5-removebg-preview.png?alt=media&token=7cb94914-d07e-47eb-b3c8-d28f20cdfca2'),
          Expanded(
              child: Container(
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
                Row(
                  children: [
                    Text(
                      'Blue Shirt for men',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const Spacer(),
                    Text(
                      '12000 Ks',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    description,
                    textAlign: TextAlign.justify,
                  ),
                ),
                const Text(
                  'Colors',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
