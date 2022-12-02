import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestorePasswordScreen extends StatefulWidget {
  const RestorePasswordScreen({super.key});

  @override
  RestorePasswordScreenState createState() => RestorePasswordScreenState();
}

class RestorePasswordScreenState extends State<RestorePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Восстановление пароля"),
      ),
    );
  }
}
