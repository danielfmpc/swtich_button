import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
	bool _comidaBrasileira = false;
	bool _comidaMexicana = false;



	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("Entrada de texto"),
			),
			body: Container(
				child: Column(
					children: <Widget>[

						CheckboxListTile(
							title: Text("Comida brasileira"),
							subtitle: Text("A melhor comida do mundo"),
							secondary: Icon(
								Icons.add_box, 
								color: Colors.green,
							),
							activeColor: Colors.green,
							value: _comidaBrasileira,
							onChanged: (bool valor){
								setState(() {
									_comidaBrasileira = valor;
								});
							},
						),
						CheckboxListTile(
							title: Text("Comida mexicana"),
							subtitle: Text("A melhor comida do mundo"),
							secondary: Icon(
								Icons.add_box, 
								color: Colors.red,
							),
							activeColor: Colors.red,
							value: _comidaMexicana,
							onChanged: (bool valor){
								setState(() {
									_comidaMexicana = valor;
								});
							},
						),
						RaisedButton(
							child: Text(
								"Salvar",
								style: TextStyle(
									fontSize: 20
								),
							),
							onPressed: (){
								print("Comida Brasileira: " + _comidaBrasileira.toString() + "\nComida Mexicana: " + _comidaMexicana.toString());
							},
						),
						
						/*Text("Comida brasileira"),
						Checkbox(
							value: _estaSelecionado,
							onChanged: (bool valor){
								setState(() {
									_estaSelecionado = valor;
								});
							},
						),
						*/
					],
				),
			),
		);
	}
}