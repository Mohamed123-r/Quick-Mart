class DataCart {
  DataCart({
    this.cartItems,
    this.subTotal,
    this.total,
  });

  DataCart.fromJson(dynamic json) {
    cartItems = json['cart_items'];
    subTotal = json['sub_total'];
    total = json['total'];
  }

  List<dynamic>? cartItems;
  num? subTotal;
  num? total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (cartItems != null) {
      map['cart_items'] = cartItems?.map((v) => v.toJson()).toList();
    }
    map['sub_total'] = subTotal;
    map['total'] = total;
    return map;
  }
}
