import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirLogin() {
    Navigator.pushNamed(context, "/login");
  }

  void _abrirCadastro() {
    Navigator.pushNamed(context, "/cadastro");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gerenciamento",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: _abrirLogin,
                  child: Image.asset(
                    "imagens/login.png",
                    height: 100,
                    width: 100,
                  ),
                ),
                GestureDetector(
                  onTap: _abrirCadastro,
                  child: Image.asset(
                    "imagens/cliente1.png",
                    height: 100,
                    width: 100,
                  ),
                ),
              ],
            ),

          )

        ],
      ),
    );
  }
}
