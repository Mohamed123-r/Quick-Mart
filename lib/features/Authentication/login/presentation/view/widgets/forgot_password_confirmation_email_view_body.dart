import 'dart:math';

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
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/forgot_password_cubit.dart';
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/forgot_password_state.dart';

class ForgotPasswordConfirmationEmailViewBody extends StatefulWidget {
  const ForgotPasswordConfirmationEmailViewBody({super.key});

  @override
  State<ForgotPasswordConfirmationEmailViewBody> createState() =>
      _ForgotPasswordConfirmationEmailViewBodyState();
}

class _ForgotPasswordConfirmationEmailViewBodyState
    extends State<ForgotPasswordConfirmationEmailViewBody> {
  int selectedIndex = 1;

  final FToast fToast = FToast();

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
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
        if (state is ConfirmNumError) {
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastErrorIcon,
            title: 'Error confirming code please try again',
          ).showToast();
        }
        if (state is ConfirmNumSuccess) {
          selectedIndex += 1;
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastSuccessIcon,
            title: 'Code confirmed successfully',
          ).showToast();
        }
        if (state is ChangePasswordError) {
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastErrorIcon,
            title: ' Error changing password please try again',
          ).showToast();
        }
        if (state is ChangePasswordSuccess) {
          selectedIndex += 1;
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastSuccessIcon,
            title: 'Password changed successfully',
          ).showToast();
          Navigator.push(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kPasswordCreatedSuccessfullyView,
              ),
            ),
          );
        }
        log(selectedIndex);
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              if (selectedIndex == 1)
                ConfirmationEmailWidget(
                  controller: context.read<ForgotPasswordCubit>().sendNumEmail,
                ),
              if (selectedIndex == 2)
                EmailVerificationWidget(
                  confirmNum: context.read<ForgotPasswordCubit>().num,
                ),
              if (selectedIndex == 3)
                NewPasswordWidget(
                  controllerPassword: context
                      .read<ForgotPasswordCubit>()
                      .changePasswordPassword,
                  controllerConfirmPassword:
                      context.read<ForgotPasswordCubit>().changePasswordConfirm,
                ),
              const SizedBox(
                height: 24,
              ),
              PrimaryBottom(
                isLoading: state is ChangePasswordLoading ||
                        state is SendCodeLoading ||
                        state is ConfirmNumLoading
                    ? true
                    : false,
                title: selectedIndex == 1
                    ? 'Send Code'
                    : selectedIndex == 2
                        ? 'Proceed'
                        : 'Save',
                onPressed: () {
                  if (selectedIndex == 1) {
                    context.read<ForgotPasswordCubit>().sendCode();
                  }
                  if (selectedIndex == 2) {
                    context.read<ForgotPasswordCubit>().confirmNum();
                  }
                  if (selectedIndex == 3) {
                    context.read<ForgotPasswordCubit>().changePassword();
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
