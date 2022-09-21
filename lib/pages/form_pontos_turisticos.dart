import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots/pages/list_pontos_turisitcos.dart';
import 'package:spots/widgets/custom_button.dart';

import '../style/Style.dart';
import '../widgets/custom_input_date.dart';
import '../widgets/custom_input_text.dart';

class FormPontosTuristicos extends StatefulWidget {
  const FormPontosTuristicos({Key? key}) : super(key: key);

  @override
  State<FormPontosTuristicos> createState() => _FormPontosTuristicosState();
}

class _FormPontosTuristicosState extends State<FormPontosTuristicos> {

  TextEditingController description = new TextEditingController();
  TextEditingController date = new TextEditingController();

  @override
  void initState() {
    print("dsljdk");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de pontos turisticos"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 16),
                child: Column(
                  children: [
                    CustomInputDate(
                      controller: date,
                      hint: "Data Cadastros",
                    ),
                    CustomInputText(
                      controller: description,
                      hint: "Nome/Descrição",
                    ),
                  ],
                ),
              )
          ),
          Container(
            height: 50,
            child: CustomButton(
              backgroundColor: Style.primaryColor,
              hint: "Salvar",
              onPressed: () {
                Navigator.pop(context,MaterialPageRoute(builder: (context) => ListPontosTuristicos()));
              },
            ),
          )
        ],
      ),
    );
  }
}
