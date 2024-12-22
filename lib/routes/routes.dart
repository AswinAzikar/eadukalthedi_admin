import 'package:eadukalthedi_admin/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String mainScreen = "/mainScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mainScreen:
        return MaterialPageRoute(builder: (_) => MainScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
