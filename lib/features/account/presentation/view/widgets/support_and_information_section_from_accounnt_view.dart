import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/account_item_list.dart';

class SupportAndInformationSectionFromAccountView extends StatelessWidget {
  const SupportAndInformationSectionFromAccountView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Support & Information",
            style: Styles.captionSemiBold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        AccountItemList(
          title: 'Privacy Policy',
          iconLeading: Assets.privacyPolicyIcon,
          onTap: () {},
        ),
        AccountItemList(
          title: 'Terms & Conditions',
          iconLeading: Assets.termsAndConditionsIcon,
          onTap: () {
            Navigator.push(
              context,
              AppRouter.router(
                const RouteSettings(
                  name: AppRouter.kTermsAndConditions,
                ),
              ),
            );
          },
        ),
        AccountItemList(
          title: 'FAQs',
          iconLeading: Assets.faqsIcon,
          onTap: () {
            Navigator.push(
              context,
              AppRouter.router(
                const RouteSettings(
                  name: AppRouter.kFAQsView,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
