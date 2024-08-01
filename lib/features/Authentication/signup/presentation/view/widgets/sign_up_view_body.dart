import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/call_to_actions_section_from_sign_up_view.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/headline_section_from_sign_up_view.dart';
import 'package:quick_mart/features/Authentication/signup/presentation/view/widgets/input_fields_section_from_sign_up_view.dart';
import 'package:quick_mart/features/authentication/signup/presentation/manage/cubits/sign_up_cubit.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({
    super.key,
  });

  final FToast fToast = FToast();

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpError) {
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastErrorIcon,
            title: state.message.toString(),
          ).showToast();
        }
        if (state is SignUpSuccess) {
          Navigator.pushReplacement(
            context,
            AppRouter.router(
              const RouteSettings(name: AppRouter.kLogInView),
            ),
          );
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastSuccessIcon,
            title: context.read<SignUpCubit>().signUpModel!.message.toString(),
          ).showToast();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadlineSectionFromSignUpView(),
                const SizedBox(
                  height: 32,
                ),
                InputFieldsSectionFromSignUpView(
                  nameController: context.read<SignUpCubit>().signUpName,
                  phoneController: context.read<SignUpCubit>().signUpPhone,
                  emailController: context.read<SignUpCubit>().signUpEmail,
                  passwordController:
                      context.read<SignUpCubit>().signUpPassword,
                ),
                const SizedBox(
                  height: 24,
                ),
                CallToActionsSectionFromSignUpView(
                  isLoading: state is SignUpLoading ? true : false,
                  primaryBottom: () {
                    context.read<SignUpCubit>().signUp();
                  },
                  secondaryBottom: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
