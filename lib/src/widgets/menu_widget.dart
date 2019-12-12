import 'package:flutter/material.dart';

import 'package:preferencias/src/pages/home_page.dart';
import 'package:preferencias/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/menu-img.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.pages, color: Colors.blue),
            onTap: () =>
                Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),
          ListTile(
            title: Text('Pary Mode'),
            leading: Icon(Icons.party_mode, color: Colors.blue),
            onTap: () {},
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings, color: Colors.blue),
            onTap: () {
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          )
        ],
      ),
    );
  }
}
