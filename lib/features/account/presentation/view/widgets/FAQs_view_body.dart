import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class FAQsViewBody extends StatelessWidget {
  const FAQsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Can I cancel my order?',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Yes only if the order is not dispatched yet. You can contact our customer service department to get your order canceled.',
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Will I receive the same product I see in the photo?',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Actual product color may vary from the images shown. Every monitor or mobile display has a different capability to display colors, and every individual may see these colors differently. In addition, lighting conditions at the time the photo was taken can also affect an image's color.",
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'How can I recover the forgotten password?',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              ' If you have forgotten your password, you can recover it from "Login - Forgotten your password?" section. You will receive an e-mail with a link to enter and confirm your new password.',
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Is my personal information confidential?',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Your personal information is confidential. We do not rent, sell, barter or trade email addresses. When you place an order with us, we collect your name, address, telephone number, credit card information and your email address. We use this information to fulfill your order and to communicate with you about your order. All your information is kept confidential and will not be disclosed to anybody unless ordered by government authorities.',
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'What payment methods can I use to make purchases?',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'We offer the following payment methods: PayPal, VISA, MasterCard and Voucher code, if applicable.',
              style: Styles.body2Regular.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
