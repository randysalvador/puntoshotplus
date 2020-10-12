import 'package:flutter/material.dart';
import 'package:puntoshots/descuentosPromociones.dart';
import 'package:puntoshots/establecimientos.dart';
import 'package:puntoshots/Membership/view/membresiaDigital.dart';
import 'package:puntoshots/presentation.dart';
import 'package:puntoshots/intro_page.dart';

import 'package:get/get.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'PuntosHot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF0058A3),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'intro_page',
      onGenerateRoute: Router.generateRoute,
    ),
  );
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'presentacion':
        return MaterialPageRoute(builder: (_) => Presentacion());
      case 'intro_page':
        return MaterialPageRoute(builder: (_) => IntroPage());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
