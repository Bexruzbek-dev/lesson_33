import 'package:flutter/material.dart';
import 'package:lesson_33/myscreen.dart';
import 'package:lesson_33/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Product(),
    );
  }
}
