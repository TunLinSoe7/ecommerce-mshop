import 'package:get/get.dart';
import 'package:mshop/data/models/product_model.dart';
import 'package:mshop/repositories/product_repository.dart';
import 'package:mshop/utils/helpers/helper_functions.dart';

class ProductController extends GetxController {
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  static ProductController get instance => Get.find();
  //variables
  final productRepo = Get.put(ProductRepository());
  Rx<bool> isLoading = false.obs;
  RxList<ProductModel> products = <ProductModel>[].obs;
  //fetch products
  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      final products = await productRepo.fetchProducts();
      this.products.assignAll(products);
    } catch (e) {
      print('e =================>${e.toString()}');
      THelperFunctions.getFirebaseErrorMessage(e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
