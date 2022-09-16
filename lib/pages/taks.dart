import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Tarefas"),
        centerTitle: true,
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
