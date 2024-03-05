import 'package:get/get.dart';
import 'package:mshop/data/models/category_model.dart';
import 'package:mshop/repositories/category_repository.dart';
import 'package:mshop/utils/helpers/helper_functions.dart';

class CategoryController extends GetxController {
  final _categoryRepo = Get.put(CategoryRepository());
  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  //variables
  Rx<bool> isLoading = false.obs;

  RxList<CategoryModel> categories = <CategoryModel>[].obs;

  //fetch categories
  Future<void> fetchCategories() async {
    try {
      isLoading.value = true;
      final categories = await _categoryRepo.fetchCategories();
      print('================>${categories.length}');
      this.categories.assignAll(categories);
      print('===========>${this.categories.length}');
    } catch (e) {
      print('=======================>${e.toString()}');
      THelperFunctions.getFirebaseErrorMessage(e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
