import 'package:contador/src/paginas/contador_page.dart';
//import 'package:contador/src/paginas/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget
{
  @override
  Widget build(context)
  {
   return MaterialApp(
     //home:Center(child:HomePage()),
     home: Center(
       child:ContadorPage(),
     ),
     //debugShowCheckedModeBanner: false,
     );
  }
}