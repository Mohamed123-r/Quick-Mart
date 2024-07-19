import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(

        contentPadding:
            const EdgeInsets.symmetric(horizontal: 40, vertical: 16,),
        prefixIcon: SizedBox(
          width: 40,
          height:56 ,
          child: Center(
            child: SvgPicture.asset(
              Assets.searchIcon,
            ),
          ),
        ),
        hintText: 'Search',
        hintStyle: Styles.captionRegular ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
