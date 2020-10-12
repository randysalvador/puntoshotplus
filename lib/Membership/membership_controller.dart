import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:puntoshots/Membership/membership_model.dart';

class QrScanController extends GetxController {
  String localStorage =
      "{\"vencimiento\": \"02/01/2050\", \"suscriptor\": \"Rass\", \"membresía\": \"150994\"}";
  // static QrScanController to = Get.find();
  @override
  void onInit() {
    super.onInit();
    print("same as initState");
    getMemershipByQr(localStorage);
  }

  String barcodeScanRes;
  QrScanModel membership;

  Future<void> scan() async {
    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#0058A3", "Salir", true, ScanMode.QR);
    getMemershipByQr(barcodeScanRes);
    update();
  }

  Future<void> getMemershipByQr(String data) async {
    print("----------------->>> DATA recibida: $data");
    if (data == '') {
      print("Error en el sistema xd"); //Widget Mensaje error
    } else {
      membership = qrScanfromJson(data);
      print(membership.membresia);
      print(membership.suscriptor);
      print(membership.vencimiento);
    }
  }

  //print(barcodeScanRes);
  //getMemershipByQr();

}
