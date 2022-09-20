import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spots/pages/page_pontos_turisticos.dart';

import '../style/Style.dart';
import '../widgets/custom_textfield.dart';

class ListPontosTuristicos extends StatefulWidget {
  const ListPontosTuristicos({Key? key}) : super(key: key);

  @override
  State<ListPontosTuristicos> createState() => _ListPontosTuristicosState();
}

class _ListPontosTuristicosState extends State<ListPontosTuristicos> {

  TextEditingController texfilter = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Tarefas"),
        centerTitle: true,
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                  child: Text("Filtros"),
                )
            ),
            CustomTextField(
              textEditingController: texfilter,
              hint: "Nome/Descrição",
            ),
            InkWell(
              child: Container(
                  color: Style.backgroundColor,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    "Filtrar",
                  )
              ),
              onTap: () {
              },
            )
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return InkWell(
              child: retItens(context),
              onTap: () {
                print("save");
              },
              onLongPress: () {

              },
            );
          },
          itemCount: 10,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) => PagePontosTuristicos()));
        },
      ),
    );
  }


  Widget retItens(context){

    return  new Container(
      height: 40,
        alignment: Alignment.centerLeft,
        child: Text(
            "Item 1",
          style: TextStyle(
          ),
        ),
      );
  }
}
