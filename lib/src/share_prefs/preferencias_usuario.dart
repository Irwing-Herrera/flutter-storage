import 'package:shared_preferences/shared_preferences.dart';

class Preferenciasusuario {
  static final Preferenciasusuario _instancia = new Preferenciasusuario._();

  factory Preferenciasusuario() {
    return _instancia;
  }

  Preferenciasusuario._();

  SharedPreferences _prefs;

  initPreferencias() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET y SET genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  // GET y SET colorSecundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  // GET y SET nombre
  get nombre {
    return _prefs.getString('nombre') ?? '';
  }

  set nombre(String value) {
    _prefs.setString('nombre', value);
  }

  // GET y SET ultimaPagina
  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }
}
