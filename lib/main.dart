// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skygpt/home_page.dart';
import 'package:skygpt/palette.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Palette.blackColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Palette.blackColor,
          )),
      title: 'S K Y G P T   ',
      home: const HomePage(),
    );
  }
}
