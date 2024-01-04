import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutterexam/model/Post.dart';
import 'package:http/http.dart' as http;

import '../model/networks/Network_request.dart';

class HomeExplore extends StatefulWidget {
  const HomeExplore({Key? key}) : super(key: key);

  @override
  State<HomeExplore> createState() => _HomeExploreState();
}

class _HomeExploreState extends State<HomeExplore>
    with SingleTickerProviderStateMixin {
  List<Post>? posts;
  var isLoader = true;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    try {
      List<Post>? fetchedPosts = await NetworkRequest().getPost();
      if (fetchedPosts != null) {
        setState(() {
          posts = fetchedPosts;
          isLoader = false;
        });
      } else {
        // Xử lý trường hợp không tải được dữ liệu
      }
    } catch (e) {
      // Xử lý lỗi khi tải dữ liệu
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoader
          ? Center(child: CircularProgressIndicator())
          : posts != null
              ? ListView.builder(
                  itemCount: posts!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Text(posts![index].fullName ?? ''),
                    );
                  },
                )
              : Center(
                  child: Text(
                      'Failed to load posts')),
    );
  }
}
