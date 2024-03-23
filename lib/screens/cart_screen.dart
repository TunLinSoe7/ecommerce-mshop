import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mshop/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const CartItemWidget(),
          const CartItemWidget(),
          const CartItemWidget(),
          const CouponWidget(),
          const DividerWidget(),
          const Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shipping Address'),
                SizedBox(
                  height: 10,
                ),
                Text('Myanmar'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Row(
                  children: [Text("SubTotal"), Spacer(), Text('Ks10000')],
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  children: [Text("FreeDelivery"), Spacer(), Text('Ks0')],
                ),
                SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  children: [Text("Tax"), Spacer(), Text('Ks0')],
                ),
                DividerWidget(),
                Row(
                  children: [Text("Toatal"), Spacer(), Text('Ks100000')],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text(
                  "CheckOut",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .apply(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: Colors.black.withOpacity(0.1),
    );
  }
}

class CouponWidget extends StatelessWidget {
  const CouponWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Coupon",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(hintText: "Enter Coupon"),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(7),
                child: MaterialButton(
                  color: Colors.black,
                  onPressed: () {},
                  child: Text(
                    "Apply",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: Colors.white),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black.withOpacity(0.1)))),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: SizedBox(
              height: 150,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: CachedNetworkImage(
                        height: 100,
                        fit: BoxFit.fill,
                        imageUrl:
                            'https://firebasestorage.googleapis.com/v0/b/mshop-ecommerce.appspot.com/o/astroa10gamingheadset-removebg-preview.png?alt=media&token=39a4cff6-629a-4303-b38c-c64370d6302f'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Astero 10 Headsets',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Spacer(),
                      const Text('ks 1000'),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Row(
                    children: [
                      const Text('Color : '),
                      const Text('Black'),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(5),
                        width: 80,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.black.withOpacity(0.1),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              height: defaultPadding / 2,
                            ),
                            Icon(
                              Icons.remove,
                              size: 20,
                            ),
                            Text('111'),
                            Icon(
                              Icons.add,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                  const Row(
                    children: [
                      Text('Storage : '),
                      Text('8/128GB'),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.delete_forever_outlined),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
