import 'package:dating/model/profile_model.dart';
import 'package:dating/services/profile_service.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfileController extends GetxController {
  var isLoading = true.obs;
  var profileData = <ProfileModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProfileData();
  }

  void fetchProfileData() async {
    print("getx");
    try {
      await ProfileService()
          .getProfileData()
          .then((value) => profileData.addAll(value));
      isLoading(false);
    } finally {
      isLoading(false);
    }
  }
}
