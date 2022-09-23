import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots/widgets/components/custom_input_text.dart';
import 'package:spots/widgets/custom_button.dart';

import '../style/Style.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _coLogin = new TextEditingController();

  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomInputText(controller: _coLogin,hint: "Login",),
              CustomInputText(controller: _coLogin, hint: "Senha",),
              CustomButton(
                hint: "Entrar",
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                }
              ),
              CustomButton(
                  hint: "Cadastre-se",
                  onPressed: () {
                  },
                  backgroundColor: Style.primaryColor
              ),
            ],
          ),
        ),
      ),
    );
  }
}
