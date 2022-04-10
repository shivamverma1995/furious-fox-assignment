import 'package:furious_fox_assignment/Models/fetch_posts_response_model.dart';
import 'package:http/http.dart' as http;

Future<FetchPostsResponseModel> fetchPostsData(
    int pageNum, String filter) async {
  Uri URL = Uri.parse(
      "https://apidev.cohora.net/post/v1/feed?postTypes=&feedOrigin=ALL_ACTIVITY&postTypes=${filter}&page=${pageNum}&perPage=20");
  Future<http.Response> data = http.get(URL);
  http.Response response = await data;
  FetchPostsResponseModel fetchPostsResponseModel =
      FetchPostsResponseModel.fromJson(response.body);
  return fetchPostsResponseModel;
}
