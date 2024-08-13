import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/product_custom_banner.dart';

class BannerSectionFromHomeView extends StatefulWidget {
  const BannerSectionFromHomeView({super.key});

  @override
  State<BannerSectionFromHomeView> createState() =>
      _BannerSectionFromHomeViewState();
}

class _BannerSectionFromHomeViewState extends State<BannerSectionFromHomeView> {
  static List items = [
    'https://student.valuxapps.com/storage/uploads/banners/1689106904Mzsmc.photo_2023-07-11_23-08-24.png',
    'https://student.valuxapps.com/storage/uploads/banners/1689106848R4Nxl.photo_2023-07-11_23-08-19.png',
    'https://student.valuxapps.com/storage/uploads/banners/1689106932hsRxm.photo_2023-07-11_23-07-53.png',
    'https://student.valuxapps.com/storage/uploads/banners/1689107104Ezc0d.photo_2023-07-11_23-07-59.png',
    'https://student.valuxapps.com/storage/uploads/banners/1689106762vIpcq.photo_2023-07-11_23-07-38.png',
    'https://student.valuxapps.com/storage/uploads/banners/1689106805161JH.photo_2023-07-11_23-07-43.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ProductCustomBanner(
      items: [
        for (var item in items)
          Container(
            decoration: BoxDecoration(
              color: kGrey_50Color,
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: NetworkImage(item),
                fit: BoxFit.fill,
              ),
            ),
          ),
      ],
      lengthItem: items.length,
    );
  }
}
