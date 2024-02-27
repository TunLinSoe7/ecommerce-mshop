import 'package:flutter/material.dart';
import 'package:mshop/utils/constants/sizes.dart';

class SearchContainerWidget extends StatelessWidget {
  const SearchContainerWidget({
    super.key,
    required this.leadingIcon,
    required this.title,
    this.iconSize = 20,
  });
  final IconData leadingIcon;
  final double iconSize;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            leadingIcon,
            size: iconSize,
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(title)
        ],
      ),
    );
  }
}
