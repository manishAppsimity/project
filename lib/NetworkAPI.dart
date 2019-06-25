import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project/pojo.dart';

Post post;

Future<Post> fetchPost() async {
  var response = await http.get(
      'https://jsonplaceholder.typicode.com/posts/1');

  // ignore: argument_type_not_assignable
  print("${response}");
  post = new Post.fromJson(json.decode(response.body));
  return Post.fromJson(json.decode(response.body));
}