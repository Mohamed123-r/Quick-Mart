import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class WishlistEmptyBody extends StatelessWidget {
  const WishlistEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.emptyWishlist,
            width: 240,
            height: 240,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Your wishlist is empty',
            style: Styles.heading2Bold,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '   Tap heart button to start saving your favorite    items.',
            textAlign: TextAlign.center,
            style: Styles.body2Regular.copyWith(
              color: kGrey_150Color,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          PrimaryBottom(
            title: 'Explore Categories',
            onPressed: () {
              Navigator.pushReplacement(
                context,
                AppRouter.router(
                  const RouteSettings(
                    name: AppRouter.kBottomNavigationBar,
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
