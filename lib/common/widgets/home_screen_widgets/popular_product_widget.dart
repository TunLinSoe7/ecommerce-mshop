import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/common/layouts/grid_layout.dart';
import 'package:mshop/common/widgets/product_card_widget.dart';
import 'package:mshop/controllers/product_controller.dart';
import 'package:mshop/shimmers/vertical_product_shimmer.dart';

class PopularProductWidgets extends StatelessWidget {
  const PopularProductWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());
    return Obx(() {
      if (controller.isLoading.value) const VerticalProductShimmer();
      return GridLayout(
          itemBuilder: (_, index) {
            return ProductCard(
              imageUrl: '${controller.products[index].image}',
              productName: '${controller.products[index].name}',
              price: '${controller.products[index].price}',
            );
          },
          itemCount: controller.products.length);
    });
  }
}
