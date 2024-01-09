class EcommerceValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regex for email validation
    final emailRegExp = RegExp(r'^[\w-]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length.
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    // Add any additional password validation here (e.g., complexity requirements)

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    // Regex for basic phone number validation
    final phoneRegExp = RegExp(r'^\d+$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number';
    }

    return null;
  }
}
