import 'package:flutter/cupertino.dart';
import 'package:quick_mart/core/function/validator.dart';
import 'package:quick_mart/core/widgets/custom_country.dart';
import 'package:quick_mart/core/widgets/custom_dropdawn.dart';
import 'package:quick_mart/core/widgets/custom_input_field.dart';

class ShippingAddressViewBody extends StatelessWidget {
  const ShippingAddressViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            CustomInputField(
              hintText: 'Enter your Full Name',
              title: 'Full Name',
              validator: validatorOfName,
            ),
            SizedBox(
              height: 12,
            ),
            CustomCountry(title: 'Phone Number'),
            SizedBox(
              height: 12,
            ),
            CustomDropDawn(),
            SizedBox(
              height: 12,
            ),
            CustomInputField(
                hintText: 'Enter street address', title: 'Street Address '),
            SizedBox(
              height: 12,
            ),
            CustomInputField(
              hintText: 'Enter postal code',
              title: 'Postal Code',
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
