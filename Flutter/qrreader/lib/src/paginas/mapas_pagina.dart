import 'package:flutter/material.dart';
import 'package:qrreader/src/models/scan_model.dart';
import 'package:qrreader/src/providers/db_provider.dart';

class MapaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ScanModel>>(
      future: DBProvider.db.getTodosScans(),
      builder: (BuildContext context,AsyncSnapshot<List<ScanModel>> snapshot) {
        if (!snapshot.hasData){
          return Center(child: CircularProgressIndicator());
        }
        final scans = snapshot.data;

        if(scans.length == 0){
          return Center(child: Text('No hay informacion'),);
        }

        return ListView.builder(
          itemCount: scans.length,
          itemBuilder: (context, i) => ListTile(
            leading: Icon(Icons.cloud_queue, color:Theme.of(context).primaryColor),
            title: Text(scans[i].valor),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
          ),
        );
      },
    );
  }
}