import '../../../generated/l10n.dart';

String? passwordValidator(String? value) {
  List<String> errors = [];
  if (value == null || value.isEmpty) {
    return S.current.thisFieldIsRequired;
  }
  if (value.length < 6) {
    errors.add(S.current.passwordTooShort);
  }
  if (!RegExp(r'^(?=.*[a-z])').hasMatch(value)) {
    errors.add(S.current.passwordRequiresLowercase);
  }
  if (!RegExp(r'^(?=.*[A-Z])').hasMatch(value)) {
    errors.add(S.current.passwordRequiresUppercase);
  }
  if (!RegExp(r'^(?=.*\d)').hasMatch(value)) {
    errors.add(S.current.passwordRequiresDigit);
  }
  if (!RegExp(r'^(?=.*[@$!%*?&-])').hasMatch(value)) {
    errors.add(S.current.passwordRequiresSpecialChar);
  }

  if (errors.isNotEmpty) {
    return errors.join('\n');
  }

  return null;
}

String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return S.current.thisFieldIsRequired;
  }
  if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
    return S.current.invalidEmail;
  }
  return null;
}
