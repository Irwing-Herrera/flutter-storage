import 'package:flutter/material.dart';

import 'package:preferencias/src/pages/home_page.dart';
import 'package:preferencias/src/pages/settings_page.dart';
import 'package:preferencias/src/share_prefs/preferencias_usuario.dart';

void main() async {

  final prefs = new Preferenciasusuario();
  await prefs.initPreferencias();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final prefs = new Preferenciasusuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Preferencias', 
        initialRoute: prefs.ultimaPagina, 
        routes: {
          HomePage.routeName     : (BuildContext context) => HomePage(),
          SettingsPage.routeName : (BuildContext context) => SettingsPage(),
        }
    );
  }
}
