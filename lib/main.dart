import 'package:flutter/material.dart';
import 'package:ladikon/colors.dart';
import 'package:ladikon/views/splashscreen.dart';

void main(List<String> args) {
  runApp(const LadikonApp());
}

class LadikonApp extends StatelessWidget {
  const LadikonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ladicon',
      theme: ThemeData(
        primarySwatch: AppColors.primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
