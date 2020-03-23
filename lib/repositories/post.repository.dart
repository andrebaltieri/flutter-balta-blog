import 'package:baltablog/models/post.model.dart';
import 'package:dio/dio.dart';

class PostRepository {
  Future<List<Post>> getAll() async {
    var url = "https://api.balta.io/v1/posts";
    Response response = await Dio().get(url);
    return (response.data as List).map((post) => Post.fromJson(post)).toList();
  }

  Future<String> getPostBody(tag) async {
    try {
      Response response = await Dio().get(
          "https://raw.githubusercontent.com/balta-io/artigos/master/${tag}.md");
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}
