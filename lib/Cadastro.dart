import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Pessoa"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu nome"),
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu sobrenome"),
              ),
              TextField(
                keyboardType: TextInputType.number,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu CPF"),
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu login"),
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu senha"),
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(labelText: "Informe seu celular"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 Padding(
                   padding: EdgeInsets.all(10),
                   child: RaisedButton(
                     child: Text("Entrar"),
                     onPressed: () {
                       showDialog(context: context, child: CupertinoAlertDialog(
                         title: Text("Alerta"),
                         content: Text("Login realizado com sucesso"),
                         actions: <Widget>[
                           CupertinoDialogAction(
                             child: Text("Ok"),
                             onPressed: () {
                               Navigator.pushNamed(context, "/home");
                             },
                           )
                         ],
                       ));
                     },
                   ),
                 ),
               ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
