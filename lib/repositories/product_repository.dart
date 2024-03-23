import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mshop/data/models/product_model.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();
  //getters
  List<ProductModel> get getProducts => _products;
  //variables
  final _db = FirebaseFirestore.instance;
  final List<ProductModel> _products = [];
  //fetch product from firestore
  Future<List<ProductModel>> fetchProducts() async {
    final snapshot = await _db.collection('products').get();
    return snapshot.docs
        .map((document) => ProductModel.fromJson(document.data()))
        .toList();
  }

  //fetchProductByID
  Future<ProductModel?> fetchProductsByID(String id) async {
    return await _db.collection('products').doc(id).get().then((value) {
      final rawData = value.data();
      return ProductModel.fromJson(Map<String, dynamic>.from(rawData as Map));
    });
  }
}
