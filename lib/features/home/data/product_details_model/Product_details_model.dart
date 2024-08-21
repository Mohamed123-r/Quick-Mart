import 'data_product_details.dart';

class ProductDetailsModel {
  ProductDetailsModel({
    this.status,
    this.message,
    this.data,
  });

  ProductDetailsModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data =
        json['data'] != null ? DataProductDetails.fromJson(json['data']) : null;
  }

  bool? status;
  dynamic message;
  DataProductDetails? data;

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
