import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("imagens/padrao.png");
  var _frase = "Sua escolha";
  void opcaoselecionada(String escolhadousuario){
    var opcoes = ["0", "1", "2"];
    var numero = Random().nextInt(opcoes.length);
    var escolhida = opcoes[numero];
    switch(escolhida) {
      case "0":
        setState(() {
          this._imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "1":
        setState(() {
          this._imagemApp = AssetImage("imagens/papel.png");
        });
        break;
      case "2":
        setState(() {
          this._imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }
        if((escolhadousuario == "0" && escolhida == "2") ||
            (escolhadousuario == "1" && escolhida == "0") ||
            (escolhadousuario == "2" && escolhida == "1") ){
          setState(() {
            this._frase = "Winner";
          });
        }else if(escolhadousuario==escolhida){
          setState(() {
            this._frase = "Draw";
          });
        }else{
          setState(() {
            this._frase = "Perdi? Aff man lagou aqui";
          });
        }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokepo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text("Escolha do App",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            )
          ),
          Image(image: this._imagemApp,),
          Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: Text( _frase,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => opcaoselecionada("0"),
                child: Image.asset("imagens/pedra.png", height: 100,),
              ),
              GestureDetector(
              onTap: () => opcaoselecionada("1"),
              child: Image.asset("imagens/papel.png", height: 100,),
              ),
              GestureDetector(
              onTap: () => opcaoselecionada("2"),
              child: Image.asset("imagens/tesoura.png", height: 100,),
              ),
            ],
          )
        ],
      ),
    );
  }
}
