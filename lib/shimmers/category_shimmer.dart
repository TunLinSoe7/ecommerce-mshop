import 'package:flutter/material.dart';
import 'package:mshop/shimmers/shimmer_effect.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (_, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Column(
                children: [
                  ShimmerEffect(
                    width: 50,
                    height: 50,
                    radius: 100,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ShimmerEffect(
                    width: 50,
                    height: 10,
                    color: Colors.grey,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
