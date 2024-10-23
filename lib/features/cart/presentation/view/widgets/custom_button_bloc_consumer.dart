import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/features/cart/presentation/manage/cart_cubit/cart_cubit.dart';

import '../../../data/models/payment_intent_input_model.dart';
import '../../manage/payment_cubit.dart';
import '../think_you_view.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ThinkYouView(),
            ),
          );
        } else if (state is PaymentFailure) {
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        return PrimaryBottom(
          onPressed: () {
            context.read<PaymentCubit>().makePayment(
                  paymentIntentInputModel: PaymentIntentInputModel(
                    amount: totalPrice.toString(),
                    currency: 'usd',
                  ),
                );
          },
          isLoading: state is PaymentLoading ? true : false,
          title: 'Continue',
        );
      },
    );
  }
}
