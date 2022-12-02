import 'package:flutter/material.dart';
import 'package:ladikon/views/homescreen.dart';
import 'package:ladikon/views/registrationscreen.dart';
import 'package:ladikon/views/restorepassword.dart';

class LoginController {
  var isErrorVisible = false;
  var isRestorePasswordVisible = false;

  final loginFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  void tryLogin(BuildContext context) {
    if (loginFieldController.text == "test" &&
        passwordFieldController.text == "test") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      isErrorVisible = true;
      isRestorePasswordVisible = true;
    }
  }

  void go_restore(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const RestorePasswordScreen()));
  }

  void go_registration(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const RegistrationScreen()));
  }
}
