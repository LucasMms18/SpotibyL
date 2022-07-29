import 'package:home_page/api/users.dart';

class Shipment {
  String? nfeKey;
  int? volumeQuantity;
  String? orderNumber;
  String? boardingOrder;
  int? state;

  User? destinator;
  User? driver;

  Shipment(
      {this.nfeKey,
      this.volumeQuantity,
      this.orderNumber,
      this.boardingOrder,
      this.state,
      this.destinator,
      this.driver});

  factory Shipment.fromJson(Map<String, dynamic> json) {
    return Shipment(
        nfeKey: json["nfeKey"],
        volumeQuantity: json["volumeQuantity"],
        orderNumber: json["orderNumber"],
        boardingOrder: json["boardingOrder"],
        state: json["state"],
        destinator:
            json["destinator"] != null ? User.fromJson(json["destinator"]) : null,
        driver: json["driver"] != null ? User.fromJson(json["driver"]) : null);
  }

  Map<String, dynamic> toJson() {
    return {
      "nfeKey": this.nfeKey,
      "volumeQuantity": this.volumeQuantity,
      "orderNumber": this.orderNumber,
      "boardingOrder": this.boardingOrder,
      "state": this.state,
      "destinator": this.destinator,
      "driver": this.driver,
    };
  }
}
