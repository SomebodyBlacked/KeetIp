import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KeetIp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('KeetIp'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
