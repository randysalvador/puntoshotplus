import 'package:flutter/material.dart';
import 'package:puntoshots/OnBoarding/intro_page.dart';
import 'package:get/get.dart';
import 'Stores/store_controller.dart';

//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final StoreController storeController =
        Get.put<StoreController>(StoreController());
    // Get.put(StoreController());
    return GetMaterialApp(
      title: 'PuntosHot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF0058A3),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
      // initialRoute: 'intro_page',
      //onGenerateRoute: Router.generateRoute,
    );
  }
}

/*class Router {
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
}*/
