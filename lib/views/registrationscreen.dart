import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ladikon/colors.dart';
import 'package:ladikon/controllers/login_controller.dart';
import 'package:ladikon/controllers/registration_controller.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

Padding mPasswordField(String newLabel, String newHintText, TextEditingController newController) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: TextField(
      controller: newController,
      
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(newLabel),
          hintText: newHintText,
      ),
    )
  );
}

Padding mTextField(String newLabel, String newHintText, TextEditingController newController) {
  return Padding(   
    padding: const EdgeInsets.all(10),
    child: TextField(
      controller: newController,
      
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          label: Text(newLabel),
          hintText: newHintText,
      ),
    )
  );
}

class RegistrationScreenState extends State<RegistrationScreen> {
  bool isAccepted = false;
  
  var controller = RegistrationController();

  var passwordField =  mTextField("Пароль", "Ваш пароль", RegistrationController().passwordFieldContoller);


  @override
  
  Widget build(BuildContext context) {
    var passwordField =  mTextField("Пароль", "Ваш пароль", controller.passwordFieldContoller);


    return Scaffold(
        
        appBar: AppBar(
          title: const Text("Регистрация"),
        ),
        body: Center(
          child: Container(
            width: 480,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: 
               Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: const Text(
                    "Регистрация",
                    style: TextStyle(
                        color: AppColors.text,
                        fontSize: 64,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                

                mTextField("Имя", "Ваше имя", controller.nameFieldController),
                mTextField("Фамилия", "Ваша фамилия", controller.surnameFieldController),
                mTextField("Отчество", "Ваше отчество", controller.patronymicFieldController),
                mTextField("Номер телефона", "Ваш номер телефона", controller.phoneFieldController),
                passwordField,
                mTextField("Повторите ваш пароль", "Ваш пароль повторно", controller.doublePasswordFieldController),
                

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Checkbox(
                    value: isAccepted, 
                    onChanged: (bool? value) {setState(() {isAccepted = value!;});},
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      minimumSize:
                          MaterialStatePropertyAll(Size.fromHeight(50)),
                      textStyle: MaterialStatePropertyAll(
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      foregroundColor: MaterialStatePropertyAll(AppColors.text),
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.primary),
                    ),
                    onPressed: () => setState(() => {}),
                    child: const Text('Регистрация'),
                  ),
                ),
              ],
              ),
            ),
          ),
        )
    );
  }
}
