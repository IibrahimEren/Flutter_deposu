import 'package:flutter/material.dart';
import 'package:to_do_app/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Kontrol etmek için build fonksiyonunu tekrar çağırdığında tekrar false
  // olarak ayarlamaması için buraya aldık
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: HomeScreen());
  }
}
