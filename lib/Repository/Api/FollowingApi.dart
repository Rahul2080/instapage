import 'dart:convert';


import 'package:http/http.dart';
import 'package:instapro/Repository/Api/Api_client.dart';
import 'package:instapro/Repository/ModelClass/FollowerModel.dart';
import 'package:instapro/Repository/ModelClass/FollowingModel.dart';
import 'package:instapro/Repository/ModelClass/InstaModel.dart';
import 'package:instapro/Repository/ModelClass/PostModel.dart';
import 'package:instapro/Repository/ModelClass/TagModel.dart';




class FollowingApi {
  ApiClient apiClient = ApiClient();


  Future<FollowingModel> getfollowing(String following) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/following?username_or_id_or_url=$following';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    print("welcome"+response.body);

    return FollowingModel.fromJson(jsonDecode(response.body));
  }
}