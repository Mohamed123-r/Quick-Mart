import 'data_cart.dart';

class CartModel {
  CartModel({
    this.status,
    this.message,
    this.data,
  });

  CartModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? DataCart.fromJson(json['data']) : null;
  }

  bool? status;
  dynamic message;
  DataCart? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}
