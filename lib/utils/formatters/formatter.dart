import 'package:intl/intl.dart';

class PFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // assuming a 13 digit phone number format: (982) 646-9426
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '${phoneNumber.substring(0, 4)} (${phoneNumber.substring(4, 7)}) ${phoneNumber.substring(7)}';
    }
    // add more custom formatting here for different formats if needed.
    return phoneNumber;
  }

// Not fully tested, but you can add more custom formatting here for different formats if needed.
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code form the digits only
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedPhoneNumber = StringBuffer();
    formattedPhoneNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedPhoneNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedPhoneNumber.write(' ');
      }
      i = end;
    }
    return formattedPhoneNumber.toString();
  }
}
