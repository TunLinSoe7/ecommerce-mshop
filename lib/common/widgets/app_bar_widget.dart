import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mshop/constants/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final IconData leadingIcon;
  final IconData trailingIcon;

  const CustomAppBar({
    Key? key,
    required this.titleText,
    required this.leadingIcon,
    required this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          leadingIcon,
          color: Colors.cyan,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Iconsax.location,
            color: Colors.black54,
            size: 20,
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
            titleText,
            style: Theme.of(context).textTheme.subtitle2,
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            trailingIcon,
            color: Colors.cyan,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
