import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';

class ButtonFromPasswordCreatedSuccessfullyView extends StatelessWidget {
  const ButtonFromPasswordCreatedSuccessfullyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PrimaryBottom(
      title: 'Login',
      onPressed: () {
        Navigator.pushReplacement(
          context,
          AppRouter.router(
            const RouteSettings(name: AppRouter.kLogInView),
          ),
        );
      },
    );
  }
}
