import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutterexam/model/Post.dart';
import 'package:http/http.dart' as http;

class NetworkRequest {
  Future<List<Post>?> getPost() async {
    var client = http.Client();

    var uri = Uri.parse('https://traning.izisoft.io/v1/students');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      List<Post> posts = postFromJson(jsonString);
      print('check data $posts');
      return posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

List<Post> postFromJson(String str) {
  final List<dynamic> jsonData = json.decode(str);
  return List<Post>.from(jsonData.map((x) => Post.fromJson(x)));
}
