import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/pages/ListView_page.dart';
import 'package:widgets_flutter/src/pages/alert_page.dart';
import 'package:widgets_flutter/src/pages/animated_container.dart';
import 'package:widgets_flutter/src/pages/avatar_page.dart';
import 'package:widgets_flutter/src/pages/card_page.dart';
import 'package:widgets_flutter/src/pages/home.dart';
import 'package:widgets_flutter/src/pages/input_pages.dart';
import 'package:widgets_flutter/src/pages/slider_page.dart';



Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder> {
    '/':(BuildContext context) => HomePage(),
    'alert':(BuildContext context) => AlertPage(),
    'avatar':(BuildContext context) => AvatarPage(),
    'card':(BuildContext context) => CardPage(),
    'animatedContainer' :(BuildContext context) => AnimatedContainerPage(),
    'inputs' :(BuildContext context) => InputPage(),
    'slider' : (BuildContext context) => SliderPage(),
    'list' : (BuildContext context) => ListaPage(),
  };
}