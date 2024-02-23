import 'package:flutter/material.dart';

class HorizontalHeadingTextWidget extends StatelessWidget {
  const HorizontalHeadingTextWidget({
    super.key,
    this.actionShow = true,
    this.onPressed,
    required this.title,
  });
  final bool actionShow;
  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Spacer(),
          if (actionShow)
            TextButton(onPressed: onPressed, child: const Text('See All'))
        ],
      ),
    );
  }
}
