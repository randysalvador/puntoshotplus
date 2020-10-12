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

  StoreModel store;
  Future<void> getStore(String _data) async {
    if (_data == '') {
      print("Error en el sistema xd"); //Widget Mensaje error
    } else {
      store = storeModelfromJson(_data);
      print(store.id);
      print(store.name);
      print(store.image);
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
