//Statelas:Tela statica
//Statefull:Tela mutavel

//stl e stf
import 'package:flutter/material.dart';

class CienteScreen extends StatefulWidget {
  const CienteScreen({super.key});

  @override
  State<CienteScreen> createState() => _CienteScreenState();
}

class _CienteScreenState extends State<CienteScreen> {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtSobrenome = TextEditingController();
  TextEditingController txtIdade = TextEditingController();

  String resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cadastro de cliente")),
        backgroundColor: Colors.blueAccent, //cor de fundo da estrutur
        foregroundColor: Colors.white, //cor do conteudo
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: txtNome,
              decoration: InputDecoration(labelText: "Nome:"),
            ),

            TextField(
              controller: txtSobrenome,
              decoration: InputDecoration(labelText: "Sobrenome:"),
            ),

            TextField(
              controller: txtIdade,
              decoration: InputDecoration(labelText: "Idade:"),
            ),

            SizedBox(
              width: double.infinity,
              child: FloatingActionButton(
                onPressed: () {
                  String nome = txtNome.text; //variaveis local do onPressed
                  String sobrenome =
                      txtSobrenome.text; //variaveis local do onPressed
                  String idade = txtIdade.text; //variaveis local do onPressed

                  setState(() {
                    resultado =
                        "Nome: $nome, Sobrenome: $sobrenome, Idade: $idade";
                  });
                },
                child: Text("Carregar"),
              ),
            ),

            Text(resultado),
          ],
        ),
      ),
    ); //Tira o "const" e trocar placeholder por scaffold
  }
}
