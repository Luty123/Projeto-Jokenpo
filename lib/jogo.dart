import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Jokenpo",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Pacifico',
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
//  Texto inicial
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do app",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NewTegomin'),
            ),
          ),
//  Escolha do app
          GestureDetector(
            onTap: () {
              print("Um clique");
            },
            onDoubleTap: () {
              print("Dois cliques");
            },
            child: Image.asset("imagens/padrao.png"),
          ),

//  Resultado
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma das opções abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NewTegomin'),
            ),
          ),
//  Opções disponiveis
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "imagens/pedra.png",
                height: 90,
              ),
              Image.asset(
                "imagens/papel.png",
                height: 90,
              ),
              Image.asset(
                "imagens/tesoura.png",
                height: 90,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
