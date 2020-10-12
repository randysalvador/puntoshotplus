import 'package:get/get.dart';
import 'dart:async';
import 'package:puntoshots/Stores/model/store_model.dart';

class StoreController extends GetxController {
  //"{\"vencimiento\": \"02/01/2050\", \"suscriptor\": \"Randy Salvador\", \"membresia\": \"150994\"}";
  String dataString = "{\"id\": \" \", \"name\": \" \", \"image\": \" \"}";
  @override
  onInit() {
    super.onInit();
    getStore(dataString);
  }

  StoreModel Store;
  Future<StoreModel> getStore(String _data) async {
    if (_data == '') {
      print("Error en el sistema xd"); //Widget Mensaje error
    } else {
      Store = StoreModelfromJson(_data);
      print(Store.id);
      print(Store.name);
      print(Store.image);
    }
  }

  /* Future scan() {
    FlutterBarcodeScanner.scanBarcode("#0058A3", "Salir", true, ScanMode.QR)
        .then((value) {
      print(value);
      getMemershipByQr(value);
      update();
    });
  } */
}
