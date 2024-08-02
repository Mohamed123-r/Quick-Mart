class ForgotPasswordState {}

final class SendCodeInitial extends ForgotPasswordState {}

final class SendCodeLoading extends ForgotPasswordState {}

final class SendCodeSuccess extends ForgotPasswordState {}

final class SendCodeError extends ForgotPasswordState {}

final class ConfirmNumInitial extends ForgotPasswordState {}

final class ConfirmNumSuccess extends ForgotPasswordState {}

final class ConfirmNumError extends ForgotPasswordState {}

final class ConfirmNumLoading extends ForgotPasswordState {}

final class ChangePasswordInitial extends ForgotPasswordState {}

final class ChangePasswordLoading extends ForgotPasswordState {}

final class ChangePasswordSuccess extends ForgotPasswordState {}

final class ChangePasswordError extends ForgotPasswordState {
  final String message;

  ChangePasswordError(this.message);

}
