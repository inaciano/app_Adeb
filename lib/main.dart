import 'package:flutter/material.dart';
import 'package:projeto_viagem/locais.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  blurRadius: 100,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Image.asset("assets/logo.jpg"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 174, left: 26),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 2, color: Colors.white))),
              child: Text(
                'Assembleia de Deus Brasília - ADEB',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 20),
                child: IconButton(
                  iconSize: 25,
                  color: Colors.white,
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 208),
            child: ListView(
              padding: const EdgeInsets.only(left: 10, right: 10),
              children: <Widget>[
                Locais(
                  local: "COMADEBG",
                  img: "assets/logo_comadebg.png",
                  discricao: "Assembleia de Deus Brasília",
                ),
                Locais(
                  local: "SEMADEB",
                  img: "assets/semadeb.png",
                  discricao: "Departamento de Missões",
                ),
                Locais(
                  local: "UFADEB",
                  img: "assets/ufadeb.png",
                  discricao: "União Feminina da ADEB",
                ),
                Locais(
                  local: "UDVADEB",
                  img: "assets/udvadeb.jpg",
                  discricao: "União dos Varões - ADEB",
                ),
                Locais(
                  local: "UMADEB",
                  img: "assets/umadeb_logo.jpg",
                  discricao: "União da Mocidade - ADEB",
                ),
                Locais(
                  local: "UNAADEB",
                  img: "assets/unaadeb_logo.jpg",
                  discricao: "União de Adolescentes - ADEB",
                ),
                Locais(
                  local: "UCADEB",
                  img: "assets/ucadeb.png",
                  discricao: "Departamento de Infantil - ADEB",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
