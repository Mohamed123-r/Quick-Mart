import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_buttons.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/confirmation_email_widget.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/email_verification_widget.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/new_password_widget.dart';
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/send_num_cubit.dart';
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/send_num_state.dart';

class ForgotPasswordConfirmationEmailViewBody extends StatefulWidget {
  const ForgotPasswordConfirmationEmailViewBody({super.key});

  @override
  State<ForgotPasswordConfirmationEmailViewBody> createState() =>
      _ForgotPasswordConfirmationEmailViewBodyState();
}

class _ForgotPasswordConfirmationEmailViewBodyState
    extends State<ForgotPasswordConfirmationEmailViewBody> {
  int selectedIndex = 1;
  final bool isLoading = false;
  final FToast fToast = FToast();

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return BlocConsumer<SendCodeCubit, SendCodeState>(
      listener: (context, state) {
        if (state is SendCodeError) {
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastErrorIcon,
            title: 'Error sending code please try again',
          ).showToast();
        }
        if (state is SendCodeSuccess) {
          selectedIndex += 1;
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastSuccessIcon,
            title: 'Code sent successfully',
          ).showToast();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              if (selectedIndex == 1)
                ConfirmationEmailWidget(
                  controller: context.read<SendCodeCubit>().sendNumEmail,
                ),
              if (selectedIndex == 2) const EmailVerificationWidget(),
              if (selectedIndex == 3) const NewPasswordWidget(),
              const SizedBox(
                height: 24,
              ),
              PrimaryBottom(
                isLoading: isLoading,
                title: selectedIndex == 1
                    ? 'Send Code'
                    : selectedIndex == 2
                        ? 'Proceed'
                        : 'Save',
                onPressed: () {
                  if (selectedIndex == 1) {
                    context.read<SendCodeCubit>().sendCode();
                  }
                  if (selectedIndex == 2) {
                    selectedIndex += 1;
                  }
                  if (selectedIndex == 3) {
                    selectedIndex += 1;
                  }
                  setState(() {
                    if (selectedIndex == 4) {
                      Navigator.pushReplacement(
                        context,
                        AppRouter.router(
                          const RouteSettings(
                              name: AppRouter.kPasswordCreatedSuccessfullyView),
                        ),
                      );
                    }
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
