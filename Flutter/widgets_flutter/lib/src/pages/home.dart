import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:widgets_flutter/src/providers/menu_providers.dart';

import 'package:widgets_flutter/src/utils/icono_string.dart';

//import 'package:widgets_flutter/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
      
    );
  }

  Widget _lista(){
    
      //print(menuProvider.opciones);
      //menuProvider.cargarData().then((opciones){
      //  print('_lista');
      //  print(opciones);
      //});
      return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
           

          print ('builder');
          print(snapshot.data);
          return ListView(
            children: _listaItems(snapshot.data, context),
          );


        },
      );

    //return ListView(
    // children: _listaItems(),
    //);
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    
    final List<Widget> opciones = [];

    data.forEach((opt) { 

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading:  getIcon(opt['icon']),
        //Icon(Icons.account_circle, color: Colors.blue),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

           Navigator.pushNamed(context, opt['ruta']);
          //final route = MaterialPageRoute(
          // builder: (context) => AlertPage()
          //);
          //Navigator.push(context, route);
        },
      );
      opciones..add(widgetTemp)
      ..add(Divider());
    });

    return opciones;
  }
}