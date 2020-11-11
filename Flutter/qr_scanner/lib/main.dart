import 'package:flutter/material.dart';
import 'package:qr_scanner/src/paginas/Home_pages.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QRScanner',
      initialRoute: 'home',
      routes: {
        'home' : (BuildContext context) => HomePages(),
      },
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
    );
  }
}