import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots/pages/list_pontos_turisitcos.dart';
import 'package:spots/widgets/custom_button.dart';

import '../style/Style.dart';

class PagePontosTuristicos extends StatefulWidget {
  const PagePontosTuristicos({Key? key}) : super(key: key);

  @override
  State<PagePontosTuristicos> createState() => _PagePontosTuristicosState();
}

class _PagePontosTuristicosState extends State<PagePontosTuristicos> {

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
              child: Column(
                children: [
                  //campos
                ],
              )
          ),
          Container(
            height: 50,
            child: CustomButton(
              backgroundColor: Style.primaryColor,
              hint: "Salvar",
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => ListPontosTuristicos()));
              },
            ),
          )
        ],
      ),
    );
  }
}
