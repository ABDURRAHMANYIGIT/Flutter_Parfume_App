import 'package:flutter/material.dart';
import 'package:parfume_app/parfume_app.dart';

void main() {
  runApp(const MyApp());
}

// ignore: camel_case_types
class appColors {
  Color primary = const Color(0xFF00403e);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ParfumeApp(),
      theme: ThemeData(
        primaryColor: appColors().primary,
      ),
    );
  }
}
