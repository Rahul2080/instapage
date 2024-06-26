import 'dart:convert';


import 'package:http/http.dart';
import 'package:instapro/Repository/Api/Api_client.dart';
import 'package:instapro/Repository/ModelClass/InstaModel.dart';




class InstaApi {
  ApiClient apiClient = ApiClient();


  Future<InstaModel> getinsta(String userName) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/highlights?username_or_id_or_url=$userName';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    print("hello"+response.body);

    return InstaModel.fromJson(jsonDecode(response.body));
  }
}