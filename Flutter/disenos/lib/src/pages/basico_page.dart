import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize:20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize:20.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
      ),
    )
    );
  }

  Widget _crearImagen(){
    return Image(
            image: NetworkImage('https://fondosmil.com/fondo/4597.jpg')
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: <Widget>[

                  Expanded(
                    child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Personaje combatiente', style: estiloTitulo,),
                        SizedBox(height: 7.0),           
                        Text('Personaje espadachin', style: estiloSubtitulo,),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0),
                  Text('41', style: TextStyle(fontSize: 20.0),),
                ],
              ),
            ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'Share'),
        
        
      ],
    );
  }

  Widget _accion(IconData icon,String texto){

    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue,size: 40.0,),
            SizedBox(height: 5.0),
            Text(texto, style: TextStyle(fontSize: 15.0,color: Colors.blue))
          ],
        );
  }

  Widget _crearTexto() {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 40.0,vertical:20.0),
      child: Text(
        'Personajes insuperables fueron perseguidos para lograr superar todas sus posibles dificultadoes algunos mas avanzados qeu otros y no falto el que era bueno para fedear el que se desconectava y mucho mas te preguntaras por que no uso bien la ortografia pues... te dire cobran y eso no da elo chao crack.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}