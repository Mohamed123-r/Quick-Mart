import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

customAppBar( {isLarge = false}) => AppBar(
      backgroundColor: kWhiteColor,
      leading: IconButton(
        onPressed: () {},
        icon:  Icon(
          Icons.arrow_back_outlined,
          color: kBlackColor,
          size: isLarge ? 28 : 24,
        ),
      ),
      title: const Text(
        'Quick Mart',
        style: Styles.body2Medium,
      ),
    );
