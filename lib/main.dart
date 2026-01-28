import 'package:flutter/material.dart';
import 'package:api_try/services/api.dart';
import 'package:api_try/screens/Fscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Fscreen()
      )
    );
  }
}
