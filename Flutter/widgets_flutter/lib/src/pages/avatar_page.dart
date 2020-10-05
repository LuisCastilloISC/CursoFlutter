import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.pinimg.com/originals/4d/34/9f/4d349f447073462f9162ac659e3afca5.jpg'),
              radius: 20.0,
            ),
          ),

          Container(
            margin: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://farm3.staticflickr.com/2476/3623181050_189380ecdf_d.jpg'),
          placeholder: AssetImage('assets/jar-loading.git'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
