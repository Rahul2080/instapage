import 'dart:convert';


import 'package:http/http.dart';
import 'package:instapro/Repository/Api/Api_client.dart';
import 'package:instapro/Repository/ModelClass/HighlightModel.dart';





class HighlightApi {
  ApiClient apiClient = ApiClient();


  Future<HighlightModel> getHighlight(String highlight) async {
    String trendingpath = 'https://instagram-scraper-api2.p.rapidapi.com/v1/highlights?username_or_id_or_url=$highlight';

    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);
    print("hello"+response.body);

    return HighlightModel.fromJson(jsonDecode(response.body));
  }
}