import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Image.asset("imagens/detalhe_contato.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Sobre o Contato",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                  ),
                )
              ],),
              Padding(
                padding: EdgeInsets.only(top: 500),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                      "Tem um texto aqui. Lol"
                  ),
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
