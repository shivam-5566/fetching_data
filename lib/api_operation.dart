import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

List<SamplePosts> samplePosts = [];
Future<List<SamplePosts>> getData() async {
  final response =
      await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  var data = jsonDecode(response.body.toString());

  if (response.statusCode == 200) {
    for (Map<String, dynamic> index in data) {
      samplePosts.add(SamplePosts.fromJson(index));
    }
    return samplePosts;
  } else {
    return samplePosts;
  }
}
