import 'package:flutter/material.dart';
import 'package:mshop/common/widgets/category_widgets/categories_items.dart';
import 'package:mshop/screens/home_screen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (_, index) {
            return CategoriesItems(
              image: '${images[index]['image']}',
              title: '${images[index]['name']}',
            );
          }),
    );
  }
}
