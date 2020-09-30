import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class ContadorPage extends StatefulWidget{

  @override
  createState() => _ContadorPageState();
  
  

}

class _ContadorPageState extends State<ContadorPage>{

   final _tamanotexto = new TextStyle(fontSize: 30);
   int _conteo=0;
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
          Text('Numero de Clicks:', style: _tamanotexto,),
          Text('$_conteo',style:_tamanotexto,),
        ],)),

       //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: _crearBotones()

      );
  }


  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width:30.0),
     FloatingActionButton(onPressed: _reset,
     child: Icon(Icons.exposure_zero),),
     Expanded(child: SizedBox()),
     FloatingActionButton(onPressed: _sustraer,
     child: Icon(Icons.remove),),
     SizedBox(width:10.0),
     FloatingActionButton(onPressed: _agregar,
     child: Icon(Icons.add),),
    ],
    );
  }

  void _agregar(){
    _conteo++;
    setState(() {});
  }

  void _sustraer(){
    _conteo--;
    setState(() {});
  }

  void _reset(){
    _conteo = 0;
    setState((){});
  }
}