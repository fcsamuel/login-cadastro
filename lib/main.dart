import 'package:flutter/material.dart';
import 'package:logincadastro/Cadastro.dart';
import 'package:logincadastro/Home.dart';
import 'package:logincadastro/Login.dart';

void main() {
  runApp(
      MaterialApp(
        routes: {
          "/home": (context) => Home(),
          "/login": (context) => Login(),
          "/cadastro": (context) => Cadastro()
        },
        home: Home(),
        debugShowCheckedModeBanner: false,
      )
  );
}