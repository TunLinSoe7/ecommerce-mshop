import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mshop/utils/constants/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? titleText;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final bool isTitleShow;
  final VoidCallback? onPressed;
  final VoidCallback? actionOnPressed;

  const CustomAppBar({
    Key? key,
    this.titleText,
    required this.leadingIcon,
    required this.trailingIcon,
    this.isTitleShow = true,
    this.onPressed,
    this.actionOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: onPressed,
        icon: Icon(
          leadingIcon,
          color: Colors.cyan,
        ),
      ),
      title: isTitleShow
          ? Row(
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
                  titleText ?? '',
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            )
          : null,
      actions: [
        IconButton(
          onPressed: actionOnPressed,
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
