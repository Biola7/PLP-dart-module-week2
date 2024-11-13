// Function that applies a discount to each item price in a list
List<double> applyDiscount(List<double> prices, double Function(double) discountFunction) {
  // List to store discounted prices
  List<double> discountedPrices = [];

  // Loop through each price and apply the discount
  for (double price in prices) {
    // Use the discount function to calculate the discounted price
    double discountedPrice = discountFunction(price);
    discountedPrices.add(discountedPrice); // Add to the new list
  }

  return discountedPrices; // Return the list of discounted prices
}

void main() {
  // List of item prices
  List<double> prices = [50.0, 100.0, 75.0, 200.0];

  // Discount function that reduces the price by 10%
  double tenPercentDiscount(double price) {
    return price - (price * 0.10);
  }

  // Apply the discount to the list of prices
  List<double> finalPrices = applyDiscount(prices, tenPercentDiscount);

  // Print the original and discounted prices
  print("Original prices: $prices");
  print("Prices after 10% discount: $finalPrices");
}
