import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'SecondTela.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibiresultado(){
    var numero = Random().nextInt(2);
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => SecondTela(numero)
      ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255,204,128, 2),
      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("imagens/logo.png"),
              GestureDetector(
                onTap: _exibiresultado,
                child:Image.asset("imagens/botao_jogar.png"),
              )
            ],
          ),
      ),
    );
  }
}
