import 'package:flutter/material.dart';

class Themechanger with ChangeNotifier {
  
  bool _darkTheme = false;
  bool _customTheme = false;

  ThemeData _currentTheme;

  ThemeData get currentTheme => this._currentTheme;
  bool get customTheme => this._customTheme;
  bool get darkTheme => this._darkTheme;

  Themechanger( int theme ){
    switch (theme) {
      case 1:
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light();
        break;
      
      case 2:
        _darkTheme = true;
        _customTheme = false;
        _currentTheme = ThemeData.dark().copyWith(
          accentColor: Colors.pink
        );
        break;

      case 3:
        _darkTheme = false;
        _customTheme = true;
        _currentTheme = ThemeData.dark().copyWith(
          accentColor: Colors.pink
        );
        break;
      default:
        _darkTheme = false;
        _customTheme = false;
        _currentTheme = ThemeData.light();
    }
  }

  set darkTheme( bool valor ) {
    this._customTheme = false;
    this._darkTheme = valor;

    if ( valor ) {
      _currentTheme = ThemeData.dark();
    }else{
      _currentTheme = ThemeData.light().copyWith(
        primaryColor: Colors.purple,
        accentColor: Colors.purple
      );
    }

    notifyListeners();
  }


  set customTheme( bool valor ) {
    this._darkTheme = false;
    this._customTheme = valor;
    notifyListeners();
  }
}