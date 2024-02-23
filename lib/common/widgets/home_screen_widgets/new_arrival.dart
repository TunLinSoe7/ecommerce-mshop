import 'package:flutter/material.dart';
import 'package:mshop/common/widgets/product_card_widget.dart';

class NewArrivalWidget extends StatelessWidget {
  const NewArrivalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return const ProductCard(
            imageUrl:
                'https://firebasestorage.googleapis.com/v0/b/bazar-d9951.appspot.com/o/Stylish_blue_plaid_shirt_for_men_-5-removebg-preview.png?alt=media&token=7cb94914-d07e-47eb-b3c8-d28f20cdfca2',
            productName: 'Blue Shirt For Men',
            price: '10000 Ks',
          );
        },
        itemCount: 6,
      ),
    );
  }
}
