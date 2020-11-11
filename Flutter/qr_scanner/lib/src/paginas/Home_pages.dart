import 'package:flutter/material.dart';
import 'package:qr_scanner/src/paginas/Direcciones.dart';
import 'package:qr_scanner/src/paginas/Mapas.dart';
import 'package:barcode_scan/barcode_scan.dart';

class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.delete_forever), 
            onPressed: () {},
          )
        ],
      ),
      body: _callPage(currentIndex),
      bottomNavigationBar: _crearBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        onPressed: _scanQR,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }

   _scanQR() async {
    dynamic futureString = '';
    try{
      futureString = BarcodeScanner.scan();
    }catch (e){
      futureString = e.toString();
    }

    print('futureString : $futureString');

    if(futureString != null ){
      print('Tenemos Informacion');
    }
  }

  Widget _callPage(int paginaActual) {
     switch(paginaActual) {
       case 0 : return MapasPage();
       case 1 : return DireccionesPage();
       default : return MapasPage();
     }
  }

  Widget _crearBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title:  Text ('Mapas') 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brightness_5),
          title:  Text ('Direcciones') 
        ),
      ],
    );
  }
}