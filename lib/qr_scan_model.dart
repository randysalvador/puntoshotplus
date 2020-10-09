import 'package:barcode_scan/barcode_scan.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'dart:convert';

// String values = "{ \" numberPhone \": \" +22565786589\", \"country\":\"CI\"}";
// print(json.decode(values));

class QrScan {
  String vencimiento;
  String suscriptor;
  String membresia;

  QrScan({this.vencimiento, this.suscriptor, this.membresia});

  factory QrScan.fromQRStringJson(Map<String, dynamic> map) {
    return QrScan(
      vencimiento: map["vencimiento"],
    );
  }
}

// class QrScanController extends GetxController {
//
//
//
// List<String> split(Pattern pattern);
// var string = "02/01/2020,Randy Salvador,150994";
// string.split(" ");
// //
//   // Future scan() async {
//   //   var result = await BarcodeScanner.scan();
//   //   print(result.type); // The result type (barcode, cancelled, failed)
//   //   print(result.rawContent); // The barcode content
//   //   print(result.format); // The barcode format (as enum)
//   //   print(result.formatNote);
//   // }
// }
