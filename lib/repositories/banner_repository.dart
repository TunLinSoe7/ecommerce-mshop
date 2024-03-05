import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:mshop/data/models/banner_model.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find();
  //variables
  final firebaseFirestore = FirebaseFirestore.instance;
  //fetch Banners from firestore

  Future<List<BannerModel>> fetchBanners() async {
    final snapshot = await firebaseFirestore.collection('banners').get();
    return snapshot.docs
        .map((document) => BannerModel.fromJson(document.data()))
        .toList();
  }
}
