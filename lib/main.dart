import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'يمن فون بوك',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}