import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mshop/controllers/category_controller.dart';
import 'package:mshop/shimmers/category_shimmer.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return Obx(() {
      if (controller.isLoading.value) return const CategoryShimmer();
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: controller.categories.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 80,
                    child: Column(
                      children: [
                        CachedNetworkImage(
                          imageUrl: '${controller.categories[index].image}',
                          height: 60,
                          width: 60,
                          placeholder: (_, url) => const Icon(
                            Icons.shopify_outlined,
                            size: 60,
                            color: Colors.cyan,
                          ),
                        ),
                        Text(
                          '${controller.categories[index].name}',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 10,
              ),
            )),
      );
    });
  }
}
