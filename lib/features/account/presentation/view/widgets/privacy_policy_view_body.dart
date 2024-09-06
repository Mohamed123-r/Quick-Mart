import 'package:flutter/material.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/utils/styles.dart';

class PrivacyPolicyViewBody extends StatelessWidget {
  const PrivacyPolicyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Our Policy',
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              "At QuickMart, we are committed to protecting the privacy and security of our users' personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard the information obtained through our e-commerce app. By using QuickMart, you consent to the practices described in this policy.",
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '1. Information Collection:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - Personal Information: We may collect personal information such as name, address, email, and phone number when you create an account, make a purchase, or interact with our services.\n'
              ' - Transaction Details: We collect information related to your purchases, including order history, payment method, and shipping details.\n'
              ' - Usage Data: We may collect data on how you interact with our app, such as browsing activity, search queries, and preferences.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '2. Information Use:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - Provide Services: We use the collected information to process orders, deliver products, and provide customer support.\n'
              ' - Personalization: We may use your information to personalize your shopping experience,recommend products, and display targeted advertisements.\n'
              ' - Communication: We may use your contact information to send important updates, promotional offers, and newsletters. You can opt-out of these communications at any time.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '3. Information Sharing:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - Third-Party Service Providers: We may share your information with trusted third-party service providers who assist us in operating our app, fulfilling orders, and improving our services.\n'
              '  - Legal Compliance: We may disclose personal information if required by law or in response to a valid legal request from authorities',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '4. Data Security:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - We implement appropriate security measures to protect your information from unauthorized access, alteration, disclosure, or destruction.\n'
              ' - However, please note that no data transmission over the internet or electronic storage is 100% secure. We cannot guarantee absolute security of your information.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '5. User Rights:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - Access and Update: You have the right to access, correct, or update your personal information stored in our app.\n'
              ' - Data Retention: We retain your personal information as long as necessary to provide our services and comply with legal obligations',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '6. Children\'s Privacy:',
              style: Styles.body2Medium,
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              ' - QuickMart is not intended for children under the age of 13. We do not knowingly collect or solicit personal information from children.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            const Text(
              '7. Updates to the Privacy Policy:',
              style: Styles.body2Medium,
            ),
            Text(
              ' - We reserve the right to update this Privacy Policy from time to time. Any changes will be posted on our app, and the revised policy will be effective upon posting.',
              style: Styles.body2Medium.copyWith(
                color: kGrey_150Color,
              ),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Text(
              'If you have any questions or concerns about our Privacy Policy, please contact our customer support. By using QuickMart, you acknowledge that you have read and understood this Privacy Policy and agree to its terms and conditions.',
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
