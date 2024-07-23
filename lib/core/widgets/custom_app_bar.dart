import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

customAppBar({isLarge = false, String? title, required BuildContext context}) =>
    AppBar(
      backgroundColor: kWhiteColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_outlined,
          color: kBlackColor,
          size: isLarge ? 28 : 24,
        ),
      ),
      title: Text(
        title ?? "",
        style: Styles.body2Medium,
      ),
    );
