import 'package:flutter/material.dart';

import 'HomeScreen.dart';


void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo App News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: Colors.green.shade400, elevation: 0.5),
        scaffoldBackgroundColor:const Color(0xffe8eddf),
      ),
      home: HomeScreen(),
    );
  }
}