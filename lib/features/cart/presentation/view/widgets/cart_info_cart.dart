import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CardInfoCart extends StatelessWidget {
  const CardInfoCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: SvgPicture.asset('assets/images/logo.svg'),
        title: const Text(
          'Credit Card',
          style: Styles.captionRegular,
        ),
        subtitle: Text('Mastercard **78',
            style: Styles.captionRegular.copyWith(
              color: Colors.black45,
            )),
      ),
    );
  }
}
