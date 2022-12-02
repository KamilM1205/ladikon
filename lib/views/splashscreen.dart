import 'package:flutter/material.dart';
import 'package:ladikon/colors.dart';
import 'package:ladikon/controllers/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    routeScreens(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bg,
      body: Center(
        child: Text(
          'Ladikon',
          style: TextStyle(
            color: AppColors.text,
          ),
        ),
      ),
    );
  }
}
