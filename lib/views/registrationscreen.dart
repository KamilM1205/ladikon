import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ladikon/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
}

Padding mTextField(String newLabel, String newHintText) {
  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: Text(newLabel),
                          hintText: newHintText),
                  ));
}

class RegistrationScreenState extends State<RegistrationScreen> {
  bool isAccepted = false;
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar: AppBar(
          title: const Text("Регистрация"),
        ),
        body: Center(
          child: Container(
            width: 480,
            alignment: Alignment.center,
            child: Column(
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
                
                mTextField("Имя", "Ваше имя"),
                mTextField("Фамилия", "Ваша фамилия"),
                mTextField("Логин", "Ваш логин"),
                mTextField("Почта", "Ваша почта"),
                mTextField("Номер телефона", "Ваш номер телефона"),
                mTextField("Пароль", "Ваш пароль"),
                mTextField("Повторите ваш пароль", "Ващ пароль повторно"),
                
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Checkbox(
                    value: isAccepted, 
                    onChanged: (bool? value) {
                      setState(() {
                          isAccepted = value!;
                        }
                      );
                    },
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
        ));
  }
}
