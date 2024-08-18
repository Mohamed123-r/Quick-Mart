import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_progress_indicators.dart';

class ImageSectionFromProductDetailView extends StatefulWidget {
  const ImageSectionFromProductDetailView({
    super.key,
    required this.lengthItem,
    this.items,
  });

  final int lengthItem;
  final List<Widget>? items;

  @override
  State<ImageSectionFromProductDetailView> createState() =>
      _ImageSectionFromProductDetailViewState();
}

class _ImageSectionFromProductDetailViewState
    extends State<ImageSectionFromProductDetailView> {
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
              height: MediaQuery.of(context).size.height * 0.3,
              aspectRatio: 16 / 9,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
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
          bottom: 10,
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
                setState(() {});
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
