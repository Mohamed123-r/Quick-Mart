import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomDropDawn extends StatefulWidget {
  const CustomDropDawn({
    super.key,
  });

  @override
  State<CustomDropDawn> createState() => _CustomDropDawnState();
}

class _CustomDropDawnState extends State<CustomDropDawn> {
  String? selectedValue;
  Color color = Colors.black12;
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: kCyanColor,
      ),
      child: CountryStateCityPicker(
        country: country,
        state: state,
        city: city,
        dialogColor: kWhiteColor,
        textFieldDecoration: InputDecoration(
          hintStyle: Styles.captionRegular.copyWith(color: kBlackColor),
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down_outlined,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: kGrey_50Color,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: color,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
