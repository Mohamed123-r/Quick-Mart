import 'data_categories.dart';

class CategoriesModel {
  CategoriesModel({
    this.status,
    this.message,
    this.data,
  });

  CategoriesModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? DataCategories.fromJson(json['data']) : null;
  }

  bool? status;
  dynamic message;
  DataCategories? data;

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
