import 'package:dartz/dartz.dart';
import 'package:nti9_flutter/core/network/api_helper.dart';
import 'package:nti9_flutter/core/network/end_points.dart';
import 'package:nti9_flutter/features/auth/data/models/user_model.dart';

class AuthRepo {
  ApiHelper apiHelper = ApiHelper();
  Future<Either<String, UserModel>> login({
    required String username,
    required String password,
})async
  {
    try{
      var response = await apiHelper.postRequest(
          endPoint: EndPoints.login,
          data: {
            'username': username,
            'password': password,
          }
      );
      var jsonResponse = response.data as Map<String, dynamic>;
      apiHelper.accessToken =  jsonResponse['access_token'];
      apiHelper.refreshToken = jsonResponse['refresh_token'];
      print(response.data.toString());

      UserModel userModel = UserModel.fromJson(jsonResponse['user']);
      return right(userModel);
    }
    catch(e){
      return left(apiHelper.handleException(e));
    }
  }
}