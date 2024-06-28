import 'dart:convert';


import 'package:http/http.dart';
import 'package:instapro/Repository/Api/Api_client.dart';
import 'package:instapro/Repository/ModelClass/FollowerModel.dart';
import 'package:instapro/Repository/ModelClass/InstaModel.dart';
import 'package:instapro/Repository/ModelClass/PostModel.dart';
import 'package:instapro/Repository/ModelClass/TagModel.dart';




class FollowerApi {
  ApiClient apiClient = ApiClient();


  Future<FollowerModel> getfollower(String follower) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/followers?username_or_id_or_url=$follower';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    print("welcome"+response.body);

    return FollowerModel.fromJson(jsonDecode(response.body));
  }
}