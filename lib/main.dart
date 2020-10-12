import 'package:flutter/material.dart';
import 'package:puntoshots/NotUsed/presentation.dart';

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
      home: Presentacion(),
      // initialRoute: 'intro_page',
      //onGenerateRoute: Router.generateRoute,
    ),
  );
}

/*class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'intro_page':
        return MaterialPageRoute(builder: (_) => Presentacion());
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
}*/
