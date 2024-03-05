import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mshop/utils/constants/sizes.dart';

class CategoriesItems extends StatelessWidget {
  const CategoriesItems({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 70,
      height: 70,
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultBorderRadius)))),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Column(
              children: [
                CachedNetworkImage(
                  imageUrl: image,
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          )),
    );
  }
}
