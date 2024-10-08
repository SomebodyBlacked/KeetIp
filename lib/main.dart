import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/editor_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
            Get.to(EditorScreen());
          },
          child: const Icon(Icons.edit),
        ),
      ),
    );
  }
}
