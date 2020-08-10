// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/router_utils.dart';
import 'package:unitconverter/main.dart';
import 'package:unitconverter/currenceyconverter.dart';

class MyRoyter {
  static const unitConverterHomePage = '/unit-converter-home-page';
  static const currencyConverter = '/currency-converter';
  static GlobalKey<NavigatorState> get navigatorKey =>
      getNavigatorKey<MyRoyter>();
  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case MyRoyter.unitConverterHomePage:
        return MaterialPageRoute(
          builder: (_) => UnitConverterHomePage(),
          settings: settings,
        );
      case MyRoyter.currencyConverter:
        return MaterialPageRoute(
          builder: (_) => CurrencyConverter(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
