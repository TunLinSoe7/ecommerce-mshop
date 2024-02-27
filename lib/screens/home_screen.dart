import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mshop/common/widgets/app_bar_widget.dart';
import 'package:mshop/common/widgets/category_widgets/category_widget.dart';
import 'package:mshop/common/widgets/home_screen_widgets/new_arrival.dart';
import 'package:mshop/common/widgets/home_screen_widgets/popular_product_widget.dart';
import 'package:mshop/common/widgets/home_screen_widgets/promo_slider_widget.dart';
import 'package:mshop/common/widgets/home_screen_widgets/search_container_widget.dart';
import 'package:mshop/common/widgets/horizontal_heading_title_widget.dart';
import 'package:mshop/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          titleText: '12/3 Yangon',
          leadingIcon: Icons.sort,
          trailingIcon: Iconsax.notification),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            children: [
              /// -- SearchContainer Widget
              SearchContainerWidget(
                  leadingIcon: Iconsax.search_normal,
                  title: 'Search for products'),
              SizedBox(
                height: defaultPadding / 2,
              ),

              ///Promo Slider
              PromoSliderWidget(),

              /// Categories heading
              HorizontalHeadingTextWidget(
                title: 'Categories',
              ),
              SizedBox(
                height: defaultPadding / 2,
              ),

              /// -- Categories
              CategoryWidget(),
              SizedBox(
                height: defaultPadding,
              ),

              /// -- New Arrival
              HorizontalHeadingTextWidget(title: 'New Arrival'),
              NewArrivalWidget(),

              /// -- Popular Products
              HorizontalHeadingTextWidget(title: 'Popular Products'),
              PopularProductWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> images = [
  {'image': 'assets/images/pants.png', 'name': 'Pants'},
  {'image': 'assets/images/pants.png', 'name': 'Pants'},
  {'image': 'assets/images/pants.png', 'name': 'Pants'},
  {'image': 'assets/images/pants.png', 'name': 'Pants'},
  {'image': 'assets/images/pants.png', 'name': 'Pants'},
  {'image': 'assets/images/pants.png', 'name': 'Pants'},
  {'image': 'assets/images/pngwing.png', 'name': 'Dress'},
];
