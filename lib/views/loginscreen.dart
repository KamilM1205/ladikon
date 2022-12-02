import 'package:flutter/material.dart';
import 'package:ladikon/colors.dart';
import 'package:ladikon/controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  var loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Вход"),
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
                    "Вход",
                    style: TextStyle(
                        color: AppColors.text,
                        fontSize: 64,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                loginErrorMessage(loginController.isErrorVisible),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: loginController.loginFieldController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Логин"),
                          hintText: "Почта/номер телефона"),
                    )),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: loginController.passwordFieldController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Пароль"),
                          hintText: "Ваш пароль"),
                    )),
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
                    onPressed: () =>
                        setState(() => loginController.tryLogin(context)),
                    child: const Text('Войти'),
                  ),
                ),
                Visibility(
                  visible: loginController.isRestorePasswordVisible,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextButton(
                        onPressed: () => loginController.go_restore(context),
                        style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(AppColors.primary),
                          overlayColor:
                              MaterialStatePropertyAll(AppColors.secondary),
                        ),
                        child: const Text("Забыли пароль?")),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                      onPressed: () => loginController.go_registration(context),
                      style: const ButtonStyle(
                        foregroundColor:
                            MaterialStatePropertyAll(AppColors.primary),
                        overlayColor:
                            MaterialStatePropertyAll(AppColors.secondary),
                      ),
                      child: const Text("Нет аккаунта? Зарегистрируйтесь!")),
                )
              ],
            ),
          ),
        ));
  }

  Widget loginErrorMessage(bool show) {
    if (show) {
      return Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.red),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: const Text('Неверный логин или пароль'),
      );
    } else {
      return Container();
    }
  }
}
