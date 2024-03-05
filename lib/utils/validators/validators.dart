class Validators {
  ///validate empty text
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
  }

  ///validate email
  static String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return 'Email is required';
    }
    //regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(email)) {
      return 'Invalid email address.';
    }
    return null;
  }

  ///validate password
  static String? validatePassword(String? password) {
    if (password == null || password.isEmpty) {
      return 'Password is required';
    }
    //Check for minimum password length
    if (password.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    //check for upper case letter
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    } //check for upper number
    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number.';
    } //check for special characters
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain at least one special characters.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      return 'Phone number is required';
    }
    //regular expression for phone validation
    final emailRegExp = RegExp(r'^\d{11}$');
    if (!emailRegExp.hasMatch(phoneNumber)) {
      return 'Invalid phone number format(11 digits required).';
    }
    return null;
  }
}
