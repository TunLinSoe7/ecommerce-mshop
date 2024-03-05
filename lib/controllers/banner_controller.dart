import 'package:get/get.dart';
import 'package:mshop/data/models/banner_model.dart';
import 'package:mshop/repositories/banner_repository.dart';
import 'package:mshop/utils/helpers/helper_functions.dart';

class BannerController extends GetxController {
  final _bannerRepo = Get.put(BannerRepository());
  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  //variables
  Rx<bool> isLoading = false.obs;

  RxList<BannerModel> banners = <BannerModel>[].obs;

  //fetch banners
  Future<void> fetchBanners() async {
    try {
      isLoading.value = true;
      final banners = await _bannerRepo.fetchBanners();
      this.banners.assignAll(banners);
    } catch (e) {
      print('=======================>${e.toString()}');
      THelperFunctions.getFirebaseErrorMessage(e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
