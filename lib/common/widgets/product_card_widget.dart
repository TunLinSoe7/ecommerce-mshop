import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mshop/utils/constants/sizes.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;
  final VoidCallback? onTap;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.price,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 154,
      padding: const EdgeInsets.all(defaultPadding / 2),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFEFEFF2),
              borderRadius:
                  BorderRadius.all(Radius.circular(defaultBorderRadius)),
            ),
            child: GestureDetector(
              onTap: onTap,
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                height: 135,
                placeholder: (_, url) => const Icon(Icons.shopify_outlined,color: Colors.cyan,),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  productName,
                  style: const TextStyle(color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),
              Expanded(
                child: Text(
                  price,
                  style: Theme.of(context).textTheme.subtitle2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
