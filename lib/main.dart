import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: kScaffoldBackgroundColor),
      home: const MainPage(),
    );
  }
}
