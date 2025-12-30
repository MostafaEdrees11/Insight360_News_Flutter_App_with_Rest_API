import 'package:flutter/material.dart';
import 'package:insight360_project/features/home/view.dart';
import 'package:insight360_project/features/search/view.dart';
import 'package:insight360_project/features/splash/view.dart';

import 'features/search_results/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INSIGHT360',
      debugShowCheckedModeBanner: false,
      home: SearchResult(),
    );
  }
}