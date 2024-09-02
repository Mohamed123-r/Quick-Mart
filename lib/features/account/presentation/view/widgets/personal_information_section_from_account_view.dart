import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/utils/styles.dart';
import 'package:quick_mart/features/account/presentation/view/widgets/account_item_list.dart';

class PersonalInformationSectionFromAccountView extends StatelessWidget {
  const PersonalInformationSectionFromAccountView({
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
            "Personal Information",
            style: Styles.captionSemiBold,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        AccountItemList(
          title: 'Shipping Address',
          iconLeading: Assets.shippingAddressIcon,
          onTap: () {
            Navigator.push(
              context,
              AppRouter.router(
                const RouteSettings(
                  name: AppRouter.kShippingAddressView,
                ),
              ),
            );
          },
        ),
        AccountItemList(
          title: 'Payment Method',
          iconLeading: Assets.paymentMethodIcon,
          onTap: () {},
        ),
        AccountItemList(
          title: 'Order History',
          iconLeading: Assets.orderHistoryIcon,
          onTap: () {},
        ),
      ],
    );
  }
}
