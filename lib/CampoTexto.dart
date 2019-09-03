import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
	TextEditingController _textEditingController = TextEditingController();
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Entrada de dados"),
			),
			body: Column(
				children: <Widget>[
					Padding(
						padding: EdgeInsets.all(32),
						child: 
							TextField(
								// Numero
								// keyboardType: TextInputType.number,
								// Texto padrão
								keyboardType: TextInputType.text,
								decoration: InputDecoration(
									labelText: "Digite um valor",
								),
								enabled: true,
								maxLength: 30,
								maxLengthEnforced: true, 
								style: TextStyle(
									fontSize: 25,
									color: Colors.green
								),
								obscureText: true,
								/*
								onChanged: (String texto){
									print("Valor digitaod: "+ texto);
								}, // captura o que digitado
								*/
								
								onSubmitted: (String texto){
									print("Valor digitaod: "+ texto);									
								}, // captura ao confirmar
								controller: _textEditingController,																
							),							
					),
					RaisedButton(
						child: Text("Salvar"),
						color: Colors.lightGreen,
						onPressed: (){
							print("Valor digitaod: " + _textEditingController.text);
						},
					),
				],
			)
		);
	}
}
