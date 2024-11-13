// Function to calculate the total price of items
double calculateTotal(List<double> prices, {double tax = 0.0}) {
  // Variable to hold the total price
  double total = 0.0;

  // Loop through each price in the list and add it to the total
  for (double price in prices) {
    total = total + price;
  }

  // Apply tax if it's provided (non-zero)
  if (tax > 0) {
    total = total + total * (tax / 100);
  }

  // Return the final total
  return total;
}

void main() {
  // List of item prices
  List<double> prices = [10.0, 20.0, 15.0];

  // Calculate the total without tax
  double totalWithoutTax = calculateTotal(prices);
  print("Total without tax: \$${totalWithoutTax}");

  // Calculate the total with a 5% tax
  double totalWithTax = calculateTotal(prices, tax: 5.0);
  print("Total with 5% tax: \$${totalWithTax}");
}
