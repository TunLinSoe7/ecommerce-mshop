import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mshop/data/models/category_model.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();
  //variables
  final firebaseFirestore = FirebaseFirestore.instance;
  //fetch categories from firestore

  Future<List<CategoryModel>> fetchCategories() async {
    final snapshot = await firebaseFirestore.collection('categories').get();
    return snapshot.docs
        .map((document) => CategoryModel.fromJson(document.data()))
        .toList();
  }
}
