class ValidationUtil {
  bool validateName(String name) {
    String pattern = r'^[A-Za-z]+(?: [A-Za-z]+)*$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(name);
  }

  bool validateEmail(String email) {
    String pattern = r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  bool validatePhone(String phoneNumber) {
    String pattern =
        r'^\+?([0-9]{1,4})?[-. ]?([0-9]{1,5})[-. ]?([0-9]{1,4})[-. ]?([0-9]{1,4})$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(phoneNumber);
  }
}
