import 'package:dating/constant/end_point.dart';
import 'package:dating/model/profile_model.dart';
import 'package:dating/services/api_base_service.dart';
import 'package:dating/utlities/custom_exception.dart';

class ProfileService {
  APIBaseService apiBaseService = APIBaseService();

  Future<List<ProfileModel>> getProfileData() async {
    String jobDetailsEndPoint = EndPoints.GET_PROFILE_ENDPOINT;
    List<ProfileModel> profileModelList = [];
    try {
      var response = await apiBaseService.get(endPoint: jobDetailsEndPoint);
      if (response != null) {
        List<dynamic> _response = response["data"];
        for (var profileData in _response) {
          ProfileModel profileModel = ProfileModel.formMap(profileData);
          profileModelList.add(profileModel);
        }
      }
    } on AppException catch (appException) {
      // print(appException.message);
    } catch (e) {
      print(e);
    }
    return profileModelList;
  }
}
