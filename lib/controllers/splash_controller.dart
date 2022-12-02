import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ladikon/views/homescreen.dart';
import 'package:ladikon/views/loginscreen.dart';

void routeScreens(BuildContext context) {
  var nextScreen;
  var isAuth = false;

  if (isAuth) {
    nextScreen = const HomeScreen();
  } else {
    nextScreen = const LoginScreen();
  }

  Timer(
      const Duration(seconds: 1),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => nextScreen)));
}
