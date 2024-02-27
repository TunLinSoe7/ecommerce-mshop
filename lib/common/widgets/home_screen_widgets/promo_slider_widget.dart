import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mshop/utils/constants/sizes.dart';

class PromoSliderWidget extends StatelessWidget {
  const PromoSliderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (_, index, realIndex) {
          return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultBorderRadius)),
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(defaultBorderRadius),
                child: Image.network(
                    height: 70,
                    fit: BoxFit.fill,
                    'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTfprwLHB3DR2Ny2TIExkdLwcX1-GdyVRf-IRhmk67EkokCPYgE'),
              ));
        },
        options: CarouselOptions(viewportFraction: 1, aspectRatio: 16 / 7));
  }
}
