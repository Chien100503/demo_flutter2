import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Students extends StatefulWidget {
  const Students({super.key});

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // child: ListView.builder(
        //   itemCount: users.length,
        //   itemBuilder: (context, index) {
        //     final user = users[index];
        //     final score = user['averageScore']; // Sử dụng cú pháp đúng để truy cập thông tin của từng sinh viên
        //     return ListTile(
        //       title: Text(user['name']), // Thay 'name' bằng key chứa tên của sinh viên trong API
        //       subtitle: Text('Average Score: $score'),
        //     );
        //   },
        // ),c
        child: Text('chịu'),
      ),
    );
  }

  // void fetchUsers() async {
  //   print('fetch users');
  //   const url = 'https://traning.izisoft.io/v1/students';
  //   final uri = Uri.parse(url);
  //   final response = await http.get(uri);
  //   if (response.statusCode == 200) {
  //     final json = jsonDecode(response.body);
  //     setState(() {
  //       users = json['results'];
  //     });
  //   } else {
  //     print('Failed to fetch users');
  //   }
  //   print('fetchUser complete');
  // }
}


