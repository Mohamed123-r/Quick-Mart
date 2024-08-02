import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomToast {
  const CustomToast({
    this.spaceBetween = true,
    required this.context,
    required this.fToast,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;
  final BuildContext context;
  final FToast fToast;
  final bool spaceBetween;

  showToast() {
    Widget toast = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 32,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: kGrey_50Color,
            width: 2,
          ),
          color: kGrey_50Color,
        ),
        child: Row(
          mainAxisAlignment: spaceBetween
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              image,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              title,
              textAlign: TextAlign.end,
              style: Styles.captionSemiBold,
            ),
          ],
        ),
      ),
    );

    // Custom Toast Position
    fToast.showToast(
        child: toast,
        toastDuration: const Duration(seconds: 4),
        positionedToastBuilder: (context, child) {
          return Positioned(
            top: 35.0,
            child: child,
          );
        });
  }
}
