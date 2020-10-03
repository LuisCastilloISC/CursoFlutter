import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title:Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height:30.0),
          _cardTipo2()
        ]
      ),
    );
  }
  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Madre mia willy un Tornado!!'),
            subtitle: Text('Vicente bonancio caballeresco el caballo mas veloz de todo calvaland'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {
                  
                },
              ),
              FlatButton(
                child:Text('Ok'),
                onPressed: (){

                }
              )
            ],
          )
        ]
      ),
    );
  }

  Widget _cardTipo2() {
    
    return Card(
      child: Column(
        children: <Widget>[
          
          
          //Image(
          //  image: NetworkImage('https://todosignificados.com/wp-content/uploads/2019/06/0c6a3ba5a4d68f0c09a1498ef85b16e5-1.jpg'),
          //),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Hay paja chavales!!!!')
          )
        ],
      ),
    );
  }
}