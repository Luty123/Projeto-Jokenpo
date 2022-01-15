import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imageApp = AssetImage("imagens/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";

  void opcaoSelecionada(String escolhaUsuario) {
    //print("Você escolheu: " + escolhaUsuario);
    var opcoes = ["Pedra", "Papel", "Tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    print("Escolha do Bot " + escolhaApp);
    print("Escolha do Usuário " + escolhaUsuario);

    switch (escolhaApp) {
      case "Pedra":
        setState(() {
          this._imageApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "Papel":
        setState(() {
          this._imageApp = AssetImage("imagens/papel.png");
        });
        break;
      case "Tesoura":
        setState(() {
          this._imageApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }
    //Validando o resultado
    //Se o o usuario vencer
    if ((escolhaUsuario == "Pedra" && escolhaApp == "Tesoura") ||
        (escolhaUsuario == "Tesoura" && escolhaApp == "Papel") ||
        (escolhaUsuario == "Papel" && escolhaApp == "Pedra")) {
      setState(() {
        this._mensagem = "Parabéns! Você ganhou";
      });
    } //Se o app vencer
    else if ((escolhaApp == "Pedra" && escolhaUsuario == "Tesoura") ||
        (escolhaApp == "Tesoura" && escolhaUsuario == "Papel") ||
        (escolhaApp == "Papel" && escolhaUsuario == "Pedra")) {
      setState(() {
        this._mensagem = "É uma pena! Você perdeu";
      });
    } else {
      setState(() {
        this._mensagem = "Você empatou! Tente novamente";
      });
    }
  }

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
          Image(image: this._imageApp),

//  Resultado
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._mensagem,
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
              GestureDetector(
                onTap: () => opcaoSelecionada("Pedra"),
                child: Image.asset(
                  "imagens/pedra.png",
                  height: 90,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionada("Papel"),
                child: Image.asset(
                  "imagens/papel.png",
                  height: 90,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionada("Tesoura"),
                child: Image.asset(
                  "imagens/tesoura.png",
                  height: 90,
                ),
              ),
              /*
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
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
