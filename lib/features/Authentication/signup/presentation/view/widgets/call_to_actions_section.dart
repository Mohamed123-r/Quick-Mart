import 'package:flutter/material.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';

class CallToActionsSection extends StatelessWidget {
  const CallToActionsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryBottom(
          title: 'Create Account',
          onPressed: () {
            Navigator.push(
              context,
              AppRouter.router(
                const RouteSettings(name: AppRouter.kSignupEmailVerification),
              ),
            );
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomToast(
                image: Assets.toastSuccessIcon,
                title:
                    '6-digit Verification code has been send to your email address.',
              ),
            ));
          },
        ),
        const SizedBox(
          height: 16,
        ),
        SecondaryBottom(
          title: 'SignUp with Google',
          onPressed: () {},
        ),
      ],
    );
  }
}
