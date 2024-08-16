import 'banners_home.dart';
import 'products_home.dart';

class DataHome {
  DataHome({
    this.banners,
    this.products,
    this.ad,
  });

  DataHome.fromJson(dynamic json) {
    if (json['banners'] != null) {
      banners = [];
      json['banners'].forEach((v) {
        banners?.add(BannersHome.fromJson(v));
      });
    }
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(ProductsHome.fromJson(v));
      });
    }
    ad = json['ad'];
  }

  List<BannersHome>? banners;
  List<ProductsHome>? products;
  String? ad;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (banners != null) {
      map['banners'] = banners?.map((v) => v.toJson()).toList();
    }
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    map['ad'] = ad;
    return map;
  }
}
