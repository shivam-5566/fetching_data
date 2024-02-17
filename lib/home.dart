import 'dart:convert';
import 'package:api_get/api_operation.dart';
import 'package:api_get/model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          return ListView.builder(
              itemCount: samplePosts.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 130,
                  width: double.infinity,
                  color: Colors.orangeAccent[100],
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  margin: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'User Id: ${samplePosts[index].userId}',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "Id: ${samplePosts[index].id}",
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "Title: ${samplePosts[index].title}",
                        maxLines: 1,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        "Body: ${samplePosts[index].body}",
                        maxLines: 1,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                );
              });
        });
  }
}
