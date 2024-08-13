import 'data_home.dart';

class HomeModel {
  HomeModel({
    this.status,
    this.message,
    this.data,
  });

  HomeModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
  }

  bool? status;
  dynamic message;
  DataHome? data;

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
