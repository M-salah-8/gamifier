String? validateEmailAddress(String? email) {
  const emailregex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailregex).hasMatch(email!)) {
    return null;
  } else {
    return 'InvalidEmail';
  }
}

String? validatePassword(String? password) {
  if (password!.length < 6) {
    return 'Short password';
  } else {
    return null;
  }
}

String? validateNameLength({required String? name, required int maxLength}) {
  if (name!.length > maxLength) {
    return 'max length';
  } else {
    return null;
  }
}
