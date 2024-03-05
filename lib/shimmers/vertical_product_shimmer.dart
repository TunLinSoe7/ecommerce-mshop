import 'package:flutter/material.dart';
import 'package:mshop/common/layouts/grid_layout.dart';
import 'package:mshop/shimmers/shimmer_effect.dart';
import 'package:mshop/utils/constants/sizes.dart';

class VerticalProductShimmer extends StatelessWidget {
  const VerticalProductShimmer({super.key, this.itemCount = 6});
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return GridLayout(
        itemBuilder: (_, index) {
          return const SizedBox(
            width: 180,
            child: Column(
              children: [
                ShimmerEffect(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                ShimmerEffect(
                  width: 100,
                  height: 10,
                  color: Colors.red,
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                ShimmerEffect(
                  width: 100,
                  height: 10,
                  color: Colors.red,
                ),
              ],
            ),
          );
        },
        itemCount: itemCount);
  }
}
