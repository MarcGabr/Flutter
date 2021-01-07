import 'package:flutter/material.dart';

class SecondTela extends StatefulWidget {
  int valor;
  SecondTela(this.valor);
  @override
  _SecondTelaState createState() => _SecondTelaState();
}

class _SecondTelaState extends State<SecondTela> {
  @override
  Widget build(BuildContext context) {

    print(widget.valor);
    var caminhoImagem = "";
    if(widget.valor == 0){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255,204,128, 2),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child:Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}