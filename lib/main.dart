// import 'package:checkbox/EntradaCheckbox.dart';
import 'package:checkbox/EntradaRadioButton.dart';
import 'package:flutter/material.dart';
// import 'CampoTexto.dart';

void main(){
	runApp(
		MaterialApp(
			// home: CampoTexto(),
			//home: EntradaCheckbox(),
      home: EntradaRadioButton(),
			debugShowCheckedModeBanner: false,
		),
	);
}