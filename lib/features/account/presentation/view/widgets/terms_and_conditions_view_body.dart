import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class TermsAndConditionsViewBody extends StatelessWidget {
  const TermsAndConditionsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms & Conditions',
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              'Welcome to QuickMart! These Terms and Conditions ("Terms") govern your use of our e-commerce app. By accessing or using QuickMart, you agree to be bound by these Terms. Please read them carefully before proceeding.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '1. Account Registration:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - You must create an account to use certain features of QuickMart.\n'
              ' - You are responsible for providing accurate and up-to-date information during the registration process.\n'
              ' - You must safeguard your account credentials and notify us immediately of any unauthorized access or use of your account.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '2. Product Information and Pricing:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - QuickMart strives to provide accurate product descriptions, images, and pricing information\n'
              ' - We reserve the right to modify product details and prices without prior notice.\n'
              ' - In the event of an error, we may cancel or refuse orders placed for incorrectly priced products.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '3. Order Placement and Fulfillment:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - By placing an order on QuickMart, you agree to purchase the selected products at the stated price.\n'
              ' - We reserve the right to accept or reject any order, and we may cancel orders due to product unavailability, pricing errors, or suspected fraudulent activity.\n'
              ' - Once an order is confirmed, we will make reasonable efforts to fulfill and deliver it in a timely manner.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '4. Payment:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - QuickMart supports various payment methods, including credit/debit cards and online payment platforms.\n'
              ' - By providing payment information, you represent and warrant that you are authorized to use the chosen payment method.\n'
              ' - All payments are subject to verification and approval by relevant financial institutions.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '5. Shipping and Delivery:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - QuickMart will make reasonable efforts to ensure timely delivery of products.\n'
              ' - Shipping times may vary based on factors beyond our control, such as location, weather conditions, or carrier delays.\n'
              ' - Risk of loss or damage to products passes to you upon delivery.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '6. Returns and Refunds:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - QuickMart\'s return and refund policies are outlined separately and govern the process for returning products and seeking refunds.\n'
              ' - Certain products may be non-returnable or subject to specific conditions',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '7. Intellectual Property:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - QuickMart and its content, including logos, trademarks, text, images, and software, are protected by intellectual property rights.'
              ' - You may not use, reproduce, modify, distribute, or display any part of QuickMart without our prior written consent.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '8. User Conduct:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - You agree to use QuickMart in compliance with applicable laws and regulations.\n'
              ' - You will not engage in any activity that disrupts or interferes with the functioning of QuickMart or infringes upon the rights of others.\n'
              ' - Any unauthorized use or attempt to access restricted areas or user accounts is strictly prohibited',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '9. Limitation of Liability:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - QuickMart and its affiliates shall not be liable for any direct, indirect, incidental, consequential, or punitive damages arising from the use or inability to use our app or any products purchased through it.\n'
              ' - We do not guarantee the accuracy, completeness, or reliability of information provided on QuickMart.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '10. Governing Law:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - These Terms shall be governed by and construed in accordance with the laws of [Jurisdiction].\n'
              ' - Any disputes arising out of or relating to these Terms shall be resolved in the courts of [Jurisdiction].',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              'If you have any questions or concerns regarding these Terms and Conditions, please contact our customer support. By using QuickMart, you acknowledge that you have read, understood, and agreed to these Terms and Conditions.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
