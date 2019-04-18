class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) return 'Email is not valid!';
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 3) return 'Password length min 6 chars!';
    return null;
  }
}
