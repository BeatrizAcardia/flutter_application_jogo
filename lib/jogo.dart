// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';

class Mygame extends StatefulWidget {
  const Mygame({super.key});

  @override
  State<Mygame> createState() => _MygameState();
}

class _MygameState extends State<Mygame> {

  final imgPedra = SizedBox(height: 100, width: 100, child: Image.asset("assets/imgs/pedra.png"),);
  final imgPapel = SizedBox(height: 100, width: 100, child: Image.asset("assets/imgs/papel.png"),);
  final imgTesoura = SizedBox(height: 100, width: 100, child: Image.asset("assets/imgs/tesoura.png"),);
  final pedra = SizedBox(height: 50, width: 100, child: Text("Pedra"),);
  final papel = SizedBox(height: 50, width: 100, child: Text("Papel"),);
  final tesoura = SizedBox(height: 50, width: 100, child: Text("Tesoura"),);
  Widget escolhapc = SizedBox();
  String result = "";
  Text resultado = Text("");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo!", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 185, 129, 199),
      ),

      body: SingleChildScrollView(child: Container(child: Column(children: [
        SizedBox(height: 20,),
          resultado,
          escolhapc,
          SizedBox(height: 20,),
        Text("✩Escolha Pedra, Papel ou Tesoura", style: TextStyle(
          fontSize: 20,
        ),),

        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            child: imgPedra,
            
            onTap: () {
                Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
              int opc = Random().nextInt(3);
              if(opc == 1){
                result = "EMPATE. O computador escolheu Pedra";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width: 70, height: 70, child:Image.asset('assets/imgs/pedra.png'));
              }else if(opc == 2){
                result = "PERDEU. O computador escolheu  Papel";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width: 70, height: 70, child:Image.asset('assets/imgs/papel.png'));
              }else{
                result = "VENCEU. O computador escolheu Tesoura";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width: 70, height: 70, child:Image.asset('assets/imgs/tesoura.png'));
              } setState(() {});
            },
          ),

          GestureDetector(
            child: imgPapel,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result = "VENCEU. O computador escolheu Pedra";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width:70, height: 70, child:Image.asset('assets/imgs/pedra.png'));
              }else if(opc == 2){
                result = "EMPATE. O computador escolheu  Papel";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width: 70, height: 70, child:Image.asset('assets/imgs/papel.png'));
              }else{
                result = "PERDEU. O computador escolheu Tesoura";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width: 70, height: 70, child:Image.asset('assets/imgs/tesoura.png'));
              } setState(() {});
            },
          ),

          GestureDetector(
            child: imgTesoura,
            onTap: () {
              int opc = Random().nextInt(3);
              if(opc == 1){
                result = "PERDEU. O computador escolheu Pedra";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width: 70, height: 70, child:Image.asset('assets/imgs/pedra.png'));
              }else if(opc == 2){
                result = "VENCEU" "O computador escolheu  Papel";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width:70, height: 70, child:Image.asset('assets/imgs/papel.png'));
              }else{
                result = "EMPATE. O computador escolheu Tesoura";
                resultado = Text("✩Escolha do App:", style: TextStyle(fontSize: 20),);
                escolhapc = SizedBox(width: 70, height: 70, child:Image.asset('assets/imgs/tesoura.png'));
              } setState(() {});
            },
          ),

        ],),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(width: 60,),
          pedra,
          papel,
          tesoura,
        ],),
        Text(result),

      ]),)),
    );
  }
}