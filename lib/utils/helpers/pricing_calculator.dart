class PPricingCalculator {
  // calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calculate Shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Use taxRate API to get tax rate for location
    // Calculate the tax rate based on other factors like location, product etc
    return 0.10; //Tax rate for now
  }

  static double getShippingCost(String location) {
    // Use shippingRate API to get tax rate for location
    // Calculate the shipping cost based on other factors like distance, weight etc
    return 5.00; //Shipping cost for now
  }
}
