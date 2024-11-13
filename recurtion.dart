// Function to calculate factorial of a number (for the discount)
int factorial(int number) {
  if (number <= 1) {
    return 1; // Base case: factorial of 1 or less is 1
  } else {
    return number * factorial(number - 1); // Recursive call
  }
}

// Function to calculate the total price with a factorial discount
double calculateFactorialDiscount(List<double> prices) {
  // Count the number of items
  int itemCount = prices.length;

  // Calculate the discount percentage based on the factorial of item count
  int discountPercentage = factorial(itemCount);

  // Calculate total price of items
  double total = 0.0;
  for (double price in prices) {
    total += price;
  }

  // Apply the discount
  double discountAmount = total * (discountPercentage / 100);
  double finalPrice = total - discountAmount;

  return finalPrice; // Return the price after applying discount
}

void main() {
  // List of item prices
  List<double> prices = [50.0, 100.0, 75.0, 25.0];

  // Calculate the final price after factorial discount
  double discountedPrice = calculateFactorialDiscount(prices);

  // Print the final price
  print("Final price after factorial discount: \$${discountedPrice}");
}
