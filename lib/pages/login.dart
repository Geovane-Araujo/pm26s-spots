import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots/widgets/custom_textfield.dart';

import '../style/Style.dart';
import '../widgets/PButton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _coLogin = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(textEditingController: _coLogin,hint: "Login",),
              CustomTextField(textEditingController: _coLogin, hint: "Senha",),
              PButton(
                hint: "Entrar",
                backgroundColor: Style.primaryColor,
                router: "home",
              ),
              PButton(
                  hint: "Cadastre-se",
                  backgroundColor: Style.primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
