import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Tu eh mano?", "Eu não tu que deixa", "Crl bixo os cara são?", "AHHHHH Coquinha Geladinha"
  ];
  var _fraseGerada = "Clieque abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = new Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas Frases"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/logo.png"),
              Text(_fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25, fontStyle: FontStyle.italic, color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text("Gerar New",
                  style: TextStyle(
                    fontSize: 17, color: Colors.teal, fontWeight: FontWeight.bold,
                  ),),
                color: Colors.lightGreenAccent,
                onPressed: (){
                  _gerarFrase();
                },
              )
            ],
          ),
        ),
      )
    );
  }
}

