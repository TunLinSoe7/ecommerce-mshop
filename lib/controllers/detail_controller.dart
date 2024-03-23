import 'package:get/get.dart';
import 'package:mshop/data/models/product_model.dart';
import 'package:mshop/repositories/product_repository.dart';
import 'package:mshop/utils/helpers/helper_functions.dart';

class ProductDetailController extends GetxController {
  final String id;
  ProductDetailController(this.id);
  @override
  void onInit() {
    fetchProductsByID(id);
    super.onInit();
  }

  static ProductDetailController get instance => Get.find();
  //variables
  final productRepo = Get.put(ProductRepository());
  Rx<bool> isLoading = false.obs;
  Rx<ProductModel?> productDetail = ProductModel().obs;
  Rx<double> rating = 0.0.obs;
  Rx<int> index = 0.obs;

  //toggle index
  void toggleIndex(int index) {
    this.index.value = index;
    update();
  }
  //fetch products by id

  Future<void> fetchProductsByID(String id) async {
    try {
      isLoading.value = true;
      final products = await productRepo.fetchProductsByID(id);
      productDetail.value = products;
    } catch (e) {
      print('byID =================>${e.toString()}');
      THelperFunctions.getFirebaseErrorMessage(e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
