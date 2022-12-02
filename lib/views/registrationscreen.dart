import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ladikon/colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  RegistrationScreenState createState() => RegistrationScreenState();
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
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Логин"),
                          hintText: "Почта/номер телефона"),
                    )),
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Почта"),
                          hintText: "Ваша почта"),
                    )),
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Номер телефона"),
                          hintText: "Введите ваш номер"),
                    )),
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Логин"),
                          hintText: "Почта/номер телефона"),
                    )),
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Пароль"),
                          hintText: "Ваш пароль"),
                    )),
                const Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: null,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Подтвердите ваш пароль"),
                          hintText: "Ваш пароль"),
                    )),
                Padding(
                  padding: EdgeInsets.all(10),
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
