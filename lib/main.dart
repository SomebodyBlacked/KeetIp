import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/editor_screen.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'KeetIp',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('KeetIp'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const EditorScreen());
          },
          child: const Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}
