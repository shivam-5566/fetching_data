import 'package:api_get/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("Get Api Json Data"),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      body: const HomePage(),
    );
  }
}
