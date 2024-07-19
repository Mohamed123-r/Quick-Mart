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
      child: const Text(
        "Top Rated",
        style: Styles.overLineSemiBold
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
      child: const Text(
          "Limited Stock",
          style: Styles.overLineSemiBold
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
      child: const Text(
          "Exclusive Sale",
          style: Styles.overLineSemiBold
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
      child: const Text(
          "Free Shipping",
          style: Styles.overLineSemiBold
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
      child: const Text(
          "Pre-Order",
          style: Styles.overLineSemiBold
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
      child: const Text(
          "Sale OFF",
          style: Styles.overLineSemiBold
      ),
    );
  }
}
