import 'package:flutter/material.dart';
import 'package:widgets_flutter/src/pages/alert_page.dart';
//import 'package:widgets_flutter/src/pages/avatar_page.dart';
//import 'package:widgets_flutter/src/pages/home.dart';
import 'package:widgets_flutter/src/rutas/rutas.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:widgets_flutter/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes APP',
      localizationsDelegates: [
      // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Hebrew, no country code
        const Locale.fromSubtags(languageCode: 'zh'), // Chinese *See Advanced Locales below*
       // ... other locales the app supports
      ],
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