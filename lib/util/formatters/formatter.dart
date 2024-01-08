import 'package:intl/intl.dart';

class ECommerceFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
      locale: 'en_NG',
      symbol: '₦', // Nigerian Naira symbol
      decimalDigits: 2,
      name: "Naira",
    ).format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Regular expression for Nigerian phone number format (+234 800 1234 5678)
    RegExp phoneRegex = RegExp(r'^(?:\+234|0)(\d{3})(\d{4})(\d{4})$');

    if (phoneRegex.hasMatch(phoneNumber)) {
      return '+234 ${phoneRegex.firstMatch(phoneNumber)!.group(1)} ${phoneRegex.firstMatch(phoneNumber)!.group(2)} ${phoneRegex.firstMatch(phoneNumber)!.group(3)}';
    } else {
      // Handle invalid phone number format
      return phoneNumber; // Or throw an error if desired
    }
  }

  static String formatInternationalCurrency(double amount, String currencyCode) {
    return NumberFormat.currency(
      locale: currencyCode, // Set locale based on currency code
      symbol: NumberFormat.simpleCurrency(locale: currencyCode).currencySymbol,
      decimalDigits: 2, // Display two decimal places
    ).format(amount);
  }
}
