void main() {
  // List of item prices
  List<double> prices = [5.0, 12.0, 8.0, 20.0, 15.0];

  // Define the price threshold
  double threshold = 10.0;

  // Use an anonymous function to filter out items below the threshold
  List<double> filteredPrices = prices.where((price) {
    return price >= threshold; // Keep only prices equal to or above the threshold
  }).toList();

  // Print the filtered prices
  print("Items priced $threshold or above: $filteredPrices");
}
