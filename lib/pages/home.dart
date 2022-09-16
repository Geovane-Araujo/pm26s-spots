import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spots/pages/taks.dart';
import 'package:spots/style/Style.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spots"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Center(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Style.primaryColor,
                      ),
                      Container(
                        child: Text("Geovane Araujo"),
                      )
                    ],
                  ),
                )
            ),
            ListTile(
              title: Text("Cadastro tarefas"),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Tasks()));
              },
            ),
            InkWell(
              child: Container(
                color: Style.backgroundColor,
                height: 40,
                alignment: Alignment.center,
                child: Text(
                    "Sair",
                )
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                  color: Style.backgroundColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CircleAvatar(
                    radius: 40,
                  ),
                  Text("Geovane Araújo",
                    style: TextStyle(
                        color: Style.primaryColor,
                        fontSize: 24
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30,left: 5,right: 5,bottom: 0),
              height: MediaQuery.of(context).size.height/2.2,
              child: Center(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Style.secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Tasks()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset("assets/images/logos/task.png",height: 40,width: 40),
                            Container(
                                margin: EdgeInsets.only(top: 20),
                                child: Text("Cadastro de Tarefas",
                                    style: TextStyle(
                                        color: Style.primaryColor,
                                        fontSize: 16
                                    ),
                                    textAlign: TextAlign.center
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
