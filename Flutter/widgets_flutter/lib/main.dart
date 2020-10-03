import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/pages/alert_page.dart';
import 'package:widgets_flutter/src/pages/avatar_page.dart';
import 'package:widgets_flutter/src/pages/home.dart';
import 'package:widgets_flutter/src/rutas/rutas.dart';

//import 'package:widgets_flutter/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings ){
        print('Ruta llamda: ${settings.name}');

        return MaterialPageRoute(
           builder: (BuildContext context ) => AlertPage()
          );
      },

    );
  }
}