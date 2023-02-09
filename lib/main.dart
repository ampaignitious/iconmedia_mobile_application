import 'package:collectionpoint/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:collectionpoint/Screens/bottom_bar.dart';

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
        title: 'iconmedia',
        theme: ThemeData(
          primaryColor: primary,
          primarySwatch: Colors.blue,
        ),
        home: const Bottom_Bar());
  }
}
