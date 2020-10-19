import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:puntoshots/Membership/membership_model.dart';
import 'package:encrypt/encrypt.dart';

class QrScanController extends GetxController {
  String result = "";
  String barcodeScanRes;
  QrScanModel membership;

  String localStorage =
      "{\"vencimiento\": \"02/01/2050\", \"suscriptor\": \"Rass\", \"membresía\": \"150994\"}";

  @override
  void onInit() {
    super.onInit();
    print("same as initState");
    getMembershipByQr(localStorage);
  }

  void decrypt(String barcodeScanRes) {
    final key = Key.fromUtf8('key'); //'
    final iv = IV.fromLength(16);
    final encrypting = Encrypter(AES(key));
    final decrypted = encrypting.decrypt(barcodeScanRes as Encrypted, iv: iv);
    result = decrypted;
    getMembershipByQr(result);
  }

  Future<void> scan() async {
    barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
        "#0058A3", "Salir", true, ScanMode.QR);
    decrypt(barcodeScanRes);
  }

  Future<void> getMembershipByQr(String data) async {
    (data == '')
        ? print("Error to get QR data")
        : membership = qrScanfromJson(data);
    update();
  }
}
