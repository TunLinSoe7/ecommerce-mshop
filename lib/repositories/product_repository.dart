import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mshop/data/models/product_model.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();
  //variables
  final _db = FirebaseFirestore.instance;

  //fetch product from firestore
  Future<List<ProductModel>> fetchProducts() async {
    final snapshot = await _db.collection('products').get();
    return snapshot.docs
        .map((document) => ProductModel.fromJson(document.data()))
        .toList();
  }
}
