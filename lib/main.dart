import 'package:flutter/material.dart';
import 'package:responsive_adaptive_simple_project/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Responsive adaptive training project ',
        debugShowCheckedModeBanner: false,
        home: HomeView());
  }
}
