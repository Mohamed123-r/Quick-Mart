import 'package:flutter/cupertino.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class TopRated extends StatelessWidget {
  const TopRated({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kBlueColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Top Rated",
        style: Styles.overLineSemiBold.copyWith(color: kWhiteColor),
      ),
    );
  }
}
class LimitedStock extends StatelessWidget {
  const LimitedStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kPurpleColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Limited Stock",
        style: Styles.overLineSemiBold.copyWith(color: kWhiteColor),
      ),
    );
  }
}
class ExclusiveSale extends StatelessWidget {
  const ExclusiveSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kRedColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Exclusive Sale",
        style: Styles.overLineSemiBold.copyWith(color: kWhiteColor),
      ),
    );
  }
}
class FreeShipping extends StatelessWidget {
  const FreeShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kGreenColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Free Shipping",
        style: Styles.overLineSemiBold.copyWith(color: kWhiteColor),
      ),
    );
  }
}
class PreOrder extends StatelessWidget {
  const PreOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kOrangeColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Pre-Order",
        style: Styles.overLineSemiBold.copyWith(color: kWhiteColor),
      ),
    );
  }
}
class SaleOff extends StatelessWidget {
  const SaleOff({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: kBlackColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Sale OFF",
        style: Styles.overLineSemiBold.copyWith(color: kWhiteColor),
      ),
    );
  }
}
