import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/logo_of_app.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kWhiteColor,
          title: const LogoOfApp(),
          actions: [
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.searchIcon,
                color: kBlackColor,
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                Assets.profileIcon,
                color: kBlackColor,
                width: 32,
                height: 32,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: const HomeViewBody(),
    );
  }
}
