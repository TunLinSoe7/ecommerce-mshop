import 'package:flutter/material.dart';
import 'package:mshop/constants/sizes.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productName;
  final String price;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.productName,
    required this.price,
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
            child: Image.network(
              imageUrl,
              height: 132,
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
