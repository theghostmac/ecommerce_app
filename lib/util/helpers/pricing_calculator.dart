class EcommercePricingCalculator {
  // Calculate price based on tax and shipping.
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;

    return totalPrice;
  }

  // Calculate shipping cost.
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10; // tax rate of 10 %
    // TODO: look up tax rate for the given location from a tax rate API or database.
  }

  static double getShippingCost(location) {
    return 3000.00; // assume shipping cost is 3000 naira.
    // TODO: look up shipping cost from a shipping rate API.
    // - calculate the shipping cost based on distance, weight, etc.
  }

  // static double calculateCartTotal(CartModel cart) {
  //   return cart.Items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
