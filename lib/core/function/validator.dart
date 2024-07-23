String? validatorOfEmail(String? value) {
  if (value == null || value.isEmpty) {
    return "Please enter Email";
  } else if (value.contains(RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
    return null;
  } else {
    return "Please enter a valid email address";
  }
}

String? validatorOfPassword(String? value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$');
  if (value == null || value.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regex.hasMatch(value)) {
      return 'Password does not meet the requirements \n'
          ' - Minimum 8 characters. \n'
          ' - At least 1 uppercase letter,\n'
          ' - At least 1 lowercase letter. \n'
          ' - At least 1 number. \n'
          ' - At least 1 special character( ! @ # \$ & * ~ ).';
    } else {
      return null;
    }
  }
}
