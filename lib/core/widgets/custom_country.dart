import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phone_input/phone_input_package.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomCountry extends StatefulWidget {
  const CustomCountry({super.key, required this.title});

  final String title;

  @override
  State<CustomCountry> createState() => _PhoneInputPageState();
}

enum FieldType { outlined, underlined }

class _PhoneInputPageState extends State<CustomCountry> {
  LayerLink layerLink = LayerLink();

  late List<CountrySelectorNavigator> navigators;
  late CountrySelectorNavigator selectorNavigator;

  @override
  void initState() {
    super.initState();
    navigators = <CountrySelectorNavigator>[
      CountrySelectorNavigator.dropdown(
        showSearchInput: true,
        searchInputDecoration: InputDecoration(
          border: InputBorder.none,
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
          hintText: 'Search for country',
          hintStyle: Styles.captionRegular,
        ),
        backgroundColor: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        flagShape: BoxShape.rectangle,
        layerLink: layerLink,
      ),
    ];
    selectorNavigator = navigators.first;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              widget.title,
              style: Styles.body2Medium,
            ),
            Text(
              ' *',
              style: Styles.body2Medium.copyWith(
                color: kRedColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        PhoneInput(
          cursorColor: kCyanColor,
          validator: PhoneValidator.compose(
              [PhoneValidator.required(), PhoneValidator.valid()]),
          flagShape: BoxShape.rectangle,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 16.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kGrey_50Color,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kGrey_50Color,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kBlueColor,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: kRedColor,
              ),
            ),
            filled: true,
            fillColor: kWhiteColor,
          ),
          countrySelectorNavigator: selectorNavigator,
        ),
      ],
    );
  }
}
