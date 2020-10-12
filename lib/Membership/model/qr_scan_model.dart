import 'dart:convert';

class QrScanModel {
  String vencimiento;
  String suscriptor;
  String membresia;

  QrScanModel({this.vencimiento, this.suscriptor, this.membresia});

  factory QrScanModel.fromQRStringJson(Map<String, dynamic> map) {
    return QrScanModel(
        vencimiento: map["vencimiento"],
        suscriptor: map["suscriptor"],
        membresia: map["membresía"]);
  }
}

QrScanModel QrScanfromJson(String jsonData) {
  final data = json.decode(jsonData);
  return QrScanModel.fromQRStringJson(data);
}

// String values = "{ \" numberPhone \": \" +22565786589\", \"country\":\"CI\"}";
// print(json.decode(values));
