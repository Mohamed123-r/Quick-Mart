import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/core/widgets/custom_app_bar.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/FAQs_view_body.dart';

class FAQsView extends StatelessWidget {
  const FAQsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: kWhiteColor,
        height: 45,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'For any query, you can visit our website for',
                  textAlign: TextAlign.center,
                  style: Styles.captionRegular,
                ),
                Text(
                  ' Help Center ',
                  textAlign: TextAlign.center,
                  style: Styles.captionSemiBold.copyWith(
                    color: kBlueColor,
                  ),
                ),
                const Text(
                  'at',
                  textAlign: TextAlign.center,
                  style: Styles.captionRegular,
                ),
              ],
            ),
            const Text(
              'Quickmart.com',
              textAlign: TextAlign.center,
              style: Styles.captionRegular,
            ),
          ],
        ),
      ),
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context: context,
        title: 'FAQs',
        isLarge: true,
      ),
      body: const FAQsViewBody(),
    );
  }
}
