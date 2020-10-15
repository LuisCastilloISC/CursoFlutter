import 'package:flutter/material.dart';
import 'package:qrreader/src/models/scan_model.dart';
import 'package:qrreader/src/paginas/direcciones_pagina.dart';
import 'package:qrreader/src/paginas/mapas_pagina.dart';
//import 'package:barcode_scan/barcode_scan.dart';
import 'package:qrreader/src/providers/db_provider.dart';

class HomePage extends StatefulWidget {
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: (){},
          )
        ],
      ),
      body: _callPage(_currentIndex),
      bottomNavigationBar: _crearBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        onPressed: scanQR,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
  
  scanQR() async {
    //https://www.facebook.com/
    //https://image.winudf.com/v2/image/Y29tLnRvbS5KaWdpZGlKaWdzYXdQdXp6bGVzMl9zY3JlZW5fMl9xNGRyMW4zOA/screen-2.jpg?fakeurl=1&type=.jpg
    //geo:27.463041405904587,-99.56563368281253

    String futureString = 'https://www.facebook.com/';
    
    if(futureString != null){
      final scan = ScanModel(valor: futureString);
      DBProvider.db.nuevoScan(scan);
    }
  }
  
  Widget _callPage(int paginaActual){
     switch(paginaActual){
       case 0: return MapaPage();
       case 1: return DireccionesPage();
       
       default: return MapaPage();
     }
  }

  Widget _crearBottomNavigationBar(){
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text('Mapas'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_5),
          title: Text('Direcciones'),
        )
      ],
    );
  }
}