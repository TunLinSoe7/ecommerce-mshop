import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout(
      {super.key,
      required this.itemBuilder,
      required this.itemCount,
      this.mainAxisExtent = 200,
      this.mainAxisSpacing = 10,
      this.crossAxisSpacing = 5});
  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final double mainAxisExtent;
  final double mainAxisSpacing, crossAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
