import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 400.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Sliders'),
       ),
       body: Container(
         child: Column(
           children: <Widget>[
             _crearSlider(),
             _crearCheckbox(),
             _crearSwitch(),
             Expanded(
             child: _crearImagen()
             ),
           ]
         ),
       ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged:(_bloquearCheck ) ? null: (valor){
        setState(() {
          _valorSlider = valor;
        });
        
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://i.pinimg.com/originals/64/b8/e9/64b8e934cf06d015f00d61a3a69a6879.jpg'),
      width: _valorSlider,
      fit:BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
  //  return Checkbox(
  //    value: _bloquearCheck,
  //    onChanged: (valor) {
  //      setState(() {
  //        _bloquearCheck = valor;
  //      });
  //     },
  //  );
   
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
}