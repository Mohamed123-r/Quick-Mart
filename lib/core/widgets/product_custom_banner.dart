import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_progress_indicators.dart';

class ProductCustomBanner extends StatefulWidget {
  const ProductCustomBanner({super.key, required this.lengthItem, this.items});

  final int lengthItem;
  final List<Widget>? items;

  @override
  State<ProductCustomBanner> createState() => _ProductCustomBannerState();
}

class _ProductCustomBannerState extends State<ProductCustomBanner> {
  int isActive = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        CarouselSlider(
          items: widget.items,
          options: CarouselOptions(
              height: 150.0,
              aspectRatio: 16 / 9,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                isActive = index;
                setState(() {});
              }),
        ),
        Positioned(
          bottom: -20,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kCyan_50Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
                children: List.generate(
              widget.lengthItem,
              (i) {
                return Padding(
                  padding: EdgeInsets.only(
                      right: i == widget.lengthItem - 1 ? 0 : 5),
                  child: CustomProgressIndicators(
                      isActive: i == isActive ? true : false),
                );
              },
            )),
          ),
        ),
      ],
    );
  }
}
