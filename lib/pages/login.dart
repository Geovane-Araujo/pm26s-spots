import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots/widgets/PTextField.dart';

import '../style/Style.dart';

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
              PTextField(textEditingController: _coLogin)
            ],
          ),
        ),
      ),
    );
  }
}
