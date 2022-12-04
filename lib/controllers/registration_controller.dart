import 'package:flutter/cupertino.dart';

class RegistrationController {
  
  final nameFieldController = TextEditingController();
  final surnameFieldController = TextEditingController();
  final patronymicFieldController = TextEditingController();
  final birthdayFieldController = TextEditingController();
  final phoneFieldController = TextEditingController();
  final passwordFieldContoller = TextEditingController();
  final doublePasswordFieldController = TextEditingController();

  void tryRegistrate(BuildContext context) {
    if (passwordFieldContoller.text != doublePasswordFieldController.text) {

    }
  }
}