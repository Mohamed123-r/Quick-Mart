import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class MyCartEmptyBody extends StatelessWidget {
  const MyCartEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.emptyCart,
            height: 240,
            width: 240,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Your Cart is Empty",
            style: Styles.heading2Bold,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Looks like you have not added anything in your cart. Go ahead and explore top categories.",
            style: Styles.body2Regular.copyWith(
              color: kGrey_150Color,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          PrimaryBottom(
            title: 'Explore Categories',
            onPressed: () {
              Navigator.push(
                context,
                AppRouter.router(
                  const RouteSettings(
                    name: AppRouter.kCategoriesView,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
