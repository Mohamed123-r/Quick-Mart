import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/home/presentation/view/widgets/sub_categories_view_body.dart';

class SubCategoriesView extends StatelessWidget {
  const SubCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context: context,
        isLarge: true,
        title: 'Sub-Categories',
      ),
      body: const SubCategoriesViewBody(),
    );
  }
}
