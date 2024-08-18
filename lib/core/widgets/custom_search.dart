import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch(
      {super.key, this.onChanged, this.controller, this.onTapFromSuffixIcon});

  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Function()? onTapFromSuffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      cursorColor: Colors.green,
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
        prefixIcon: SizedBox(
          width: 40,
          height: 56,
          child: Center(
            child: SvgPicture.asset(
              Assets.searchIcon,
            ),
          ),
        ),
        suffixIcon: SizedBox(
          width: 40,
          height: 56,
          child: Center(
            child: GestureDetector(
              onTap: onTapFromSuffixIcon,
              child: SvgPicture.asset(
                Assets.filterIcon,
              ),
            ),
          ),
        ),
        hoverColor: Colors.red,
        hintText: 'Search',
        hintStyle: Styles.captionRegular,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.green),
        ),
      ),
    );
  }
}
