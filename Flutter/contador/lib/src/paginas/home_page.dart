import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final tamanotexto = new TextStyle(fontSize: 30);
  final conteo=10;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Titulo'),),
      //body: Center(child: Column(children: [
      //  Text('Numero de Clicks:'),
      //],)),
      body: Center(
        

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Numero de Clicks:', style: tamanotexto,),
          Text('$conteo',style:tamanotexto,),
        ],)),

       //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        floatingActionButton: FloatingActionButton(onPressed: () {
          print('Hola wapisimo');
        },
        child: Icon(Icons.add_circle),
        ),

      );
  }
}