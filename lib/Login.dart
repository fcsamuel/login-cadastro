import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logincadastro/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  BuildContext scaffoldContext;
  TextEditingController _usuario = new TextEditingController();
  TextEditingController _senha = new TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Pessoa"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(labelText: "Informe o usuário"),
                  controller: _usuario,
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(labelText: "Informe a senha"),
                  controller: _senha,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: RaisedButton(
                        child: Text("Voltar"),
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },
                      ),
                    ),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
