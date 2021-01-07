import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Seviço"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Image.asset("imagens/detalhe_servico.png"),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Sobre os Serviços",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue
                    ),
                  ),
                )
              ],),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                      "Consultoria"
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                      "Consultoria"
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                      "Consultoria"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

