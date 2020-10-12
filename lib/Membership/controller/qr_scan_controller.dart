import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:puntoshots/QrScan/model/qr_scan_model.dart';

class QrScanController extends GetxController {
  //"{\"vencimiento\": \"02/01/2050\", \"suscriptor\": \"Randy Salvador\", \"membresia\": \"150994\"}";
  String dataString =
      "{\"vencimiento\": \" \", \"suscriptor\": \" \", \"membresía\": \" \"}";
  @override
  onInit() {
    super.onInit();
    getMemershipByQr(dataString);
  }

  QrScanModel Membership;
  Future<QrScanModel> getMemershipByQr(String _data) async {
    if (_data == '') {
      print("Error en el sistema xd"); //Widget Mensaje error
    } else {
      Membership = QrScanfromJson(_data);
      print(Membership.suscriptor);
      print(Membership.membresia);
      print(Membership.vencimiento);
    }
  }

  Future scan() {
    FlutterBarcodeScanner.scanBarcode("#0058A3", "Salir", true, ScanMode.QR)
        .then((value) {
      print(value);
      getMemershipByQr(value);
      update();
    });
  }
}
