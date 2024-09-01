import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/api/api_keys.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCyanColor,
      appBar: AppBar(
        backgroundColor: kCyanColor,
        leading: Center(
          child: SvgPicture.asset(
            Assets.profileIcon,
            color: kWhiteColor,
            width: 40,
            height: 40,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              CacheHelper().getData(key: ApiKeys.username) ?? 'Account',
              style: Styles.button1SemiBold.copyWith(
                color: kWhiteColor,
              ),
            ),
            Text(
              CacheHelper().getData(key: 'email') ?? 'Account',
              style: Styles.button2SemiBold.copyWith(
                color: kWhiteColor,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.logoutIcon,
              color: kWhiteColor,
              width: 32,
              height: 32,
            ),
          )
        ],
      ),
      body: Container(),
    );
  }
}
