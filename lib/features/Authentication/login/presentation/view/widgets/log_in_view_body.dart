import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quick_mart/core/database/cache/cache_helper.dart';
import 'package:quick_mart/core/utils/app_router.dart';
import 'package:quick_mart/core/utils/assets.dart';
import 'package:quick_mart/core/widgets/custom_toast.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/forgot_password_section_from_login_views.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/headline_section_from_login_view.dart';
import 'package:quick_mart/features/Authentication/login/presentation/view/widgets/input_fields_section_from_login_view.dart';
import 'package:quick_mart/features/authentication/login/presentation/manage/cubits/log_in_cubit.dart';
import 'package:quick_mart/features/authentication/login/presentation/view/widgets/call_to_action_section_from_login_view.dart';

class LogInViewBody extends StatelessWidget {
  LogInViewBody({super.key});

  final FToast fToast = FToast();

  @override
  Widget build(BuildContext context) {
    fToast.init(context);
    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogInSuccess) {
          Navigator.pushReplacement(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kHomeView,
              ),
            ),
          );
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastSuccessIcon,
            title: context.read<LogInCubit>().logInModel!.message.toString(),
          ).showToast();
          CacheHelper().saveData(key: 'logInSuccess', value: true);
        }
        if (state is LogInError) {
          CustomToast(
            context: context,
            fToast: fToast,
            image: Assets.toastErrorIcon,
            title: state.message.toString(),
          ).showToast();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 24,
                ),
                const HeadlineSectionFromLoginView(),
                const SizedBox(
                  height: 32,
                ),
                InputFieldsSectionFromLoginView(
                  emailController: context.read<LogInCubit>().logInEmail,
                  passwordController: context.read<LogInCubit>().logInPassword,
                ),
                const SizedBox(
                  height: 24,
                ),
                const ForgotPasswordSectionFromLoginViews(),
                const SizedBox(
                  height: 24,
                ),
                CallToActionSectionFromLoginView(
                  isLoading: state is LogInLoading ? true : false,
                  primaryBottom: () {
                    context.read<LogInCubit>().logIn();
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
