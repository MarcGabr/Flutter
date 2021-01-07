import 'package:flutter/material.dart';

class Texto extends StatefulWidget {
  @override
  _TextoState createState() => _TextoState();
}

class _TextoState extends State<Texto> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _resultado = "";
 void _calcular(){
  double precoalcoll = double.tryParse(_controllerAlcool.text);
  double precoGasolina = double.tryParse(_controllerGasolina.text);
  if(precoalcoll == null || precoGasolina == null){
    setState(() {
      _resultado = "Número invalido";
  });
  }else{
    if((precoalcoll/precoGasolina) >= 0.7){
      setState(() {
        _resultado = "Melhor gasolina";
      });
    }else{
      setState(() {
        _resultado = "Melhor alcool";
      });
    }
  _limparCampos();
  }
 }
void _limparCampos(){
   _controllerGasolina.text = "";
   _controllerAlcool.text = "";
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alcool ou Gasolina"),
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("imagens/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("Saiba como abastecer",
                  style: TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Preço Alcool, ex: 1.59"
                ),
                style: TextStyle(fontSize: 18
                ),
                controller: _controllerAlcool,
              ),
              TextField(keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Preço Gasolina, ex: 3.59"
                ),
                style: TextStyle(fontSize: 18
                ),
                controller: _controllerGasolina,
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  padding: EdgeInsets.all(12),
                  child: Text("Calcular", style: TextStyle(fontSize: 20),),
                  onPressed: _calcular,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20),
                child: Text(_resultado, style: TextStyle(
                    fontWeight: FontWeight.bold
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
