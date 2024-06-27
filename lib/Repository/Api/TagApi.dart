import 'dart:convert';


import 'package:http/http.dart';
import 'package:instapro/Repository/Api/Api_client.dart';
import 'package:instapro/Repository/ModelClass/InstaModel.dart';
import 'package:instapro/Repository/ModelClass/PostModel.dart';
import 'package:instapro/Repository/ModelClass/TagModel.dart';




class TagApi {
  ApiClient apiClient = ApiClient();


  Future<TagModel> gettag(String tag) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/tagged?username_or_id_or_url=$tag';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    print("welcome"+response.body);

    return TagModel.fromJson(jsonDecode(response.body));
  }
}