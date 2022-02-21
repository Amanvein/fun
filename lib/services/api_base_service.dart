import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dating/constant/environment.dart';
import 'package:dating/utlities/custom_exception.dart';
import 'package:http/http.dart' as http;

class APIBaseService {
  String url = Environment.DEV;

  Map<String, String> headers = {
    "content-type": "application/json",
    "Accept": "application/json",
  };

  Future<dynamic> get({
    required String endPoint,
    bool isAuthenticated = true,
  }) async {
    var uri = Uri.parse(url + endPoint);
    try {
      var response = await http.get(uri);
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    }
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body);
        return responseJson;
      case 201:
        var responseJson = json.decode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(json.decode(response.body)["message"],
            response.request!.url.toString());
      case 403:
        throw UnAuthorizedException(json.decode(response.body)["message"],
            response.request!.url.toString());
      case 422:
        throw BadRequestException(json.decode(response.body)["message"],
            response.request!.url.toString());
      case 500:
        throw InternalServerError(json.decode(response.body)["message"],
            response.request!.url.toString());
      default:
        throw FetchDataException(
            'Error occured with code : ${json.decode(response.body)["message"]}',
            response.request!.url.toString());
    }
  }
}
