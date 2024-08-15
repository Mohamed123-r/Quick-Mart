import 'data_category_details.dart';

class CategoryDetailsModel {
  CategoryDetailsModel({
    this.status,
    this.message,
    this.data,
  });

  CategoryDetailsModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null
        ? DataCategoryDetails.fromJson(json['data'])
        : null;
  }

  bool? status;
  dynamic message;
  DataCategoryDetails? data;

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
