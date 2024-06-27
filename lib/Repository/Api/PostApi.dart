import 'dart:convert';


import 'package:http/http.dart';
import 'package:instapro/Repository/Api/Api_client.dart';
import 'package:instapro/Repository/ModelClass/InstaModel.dart';
import 'package:instapro/Repository/ModelClass/PostModel.dart';




class PostApi {
  ApiClient apiClient = ApiClient();


  Future<PostModel> getpost(String post) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1.2/posts?username_or_id_or_url=$post';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    print("welcome"+response.body);

    return PostModel.fromJson(jsonDecode(response.body));
  }
}