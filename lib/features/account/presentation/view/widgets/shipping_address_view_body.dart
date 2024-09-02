import 'package:flutter/cupertino.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/core/widgets/custom_country.dart';
import 'package:quick_mart/core/widgets/custom_dropdawn.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';

class ShippingAddressViewBody extends StatelessWidget {
  const ShippingAddressViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            const CustomInputField(
              hintText: 'Enter your Full Name',
              title: 'Full Name',
              validator: validatorOfName,
            ),
            const SizedBox(
              height: 12,
            ),
            const CustomCountry(title: 'Phone Number'),
            const SizedBox(
              height: 12,
            ),
            const CustomDropDawn(),
            const SizedBox(
              height: 12,
            ),
            const CustomInputField(
                hintText: 'Enter street address', title: 'Street Address '),
            const SizedBox(
              height: 12,
            ),
            const CustomInputField(
              hintText: 'Enter postal code',
              title: 'Postal Code',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 32,
            ),
            PrimaryBottom(
              title: 'Save',
              onPressed: () {},
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
