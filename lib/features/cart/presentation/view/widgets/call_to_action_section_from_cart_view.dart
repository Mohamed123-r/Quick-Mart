import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/constants.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/features/cart/data/repos/checkout_repo_imbl.dart';
import 'package:quick_mart/features/cart/presentation/manage/payment_cubit.dart';
import 'package:quick_mart/features/cart/presentation/view/widgets/payment_bottom_sheet.dart';

class CallToActionSectionFromCartView extends StatelessWidget {
  const CallToActionSectionFromCartView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryBottom(
      title: 'Checkout',
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: kWhiteColor,
            context: context,
            builder: (context) {
              return BlocProvider(
                create: (context) => PaymentCubit(CheckoutRepoImbl()),
                child: const PaymentBottomSheet(),
              );
            });
      },
    );
  }
}
