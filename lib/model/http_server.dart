import 'dart:convert';

import 'package:flutter_nobitex_api/model/post_model.dart';
import 'package:http/http.dart' as http;

class HttpRequest {
  final String url = 'https://api.nobitex.ir/v2/trades';
  final String symbol = 'USDTIRT';
  var header = {"content-type": "application/json"};

  Future<List<Post>> getPost(String symbol) async {
    http.Response res =
        await http.post(url, headers: header, body: '{"symbol": "$symbol"}');
    if (res.statusCode == 200) {
      print(res.statusCode);
      var response = jsonDecode(res.body);
      List<dynamic> body = response['trades'];
      List<Post> posts = body.map((dynamic e) => Post.fromJson(e)).toList();

      return posts;
    } else {
      print(res.statusCode);
      throw 'Can\'t get post';
    }
  }
}
