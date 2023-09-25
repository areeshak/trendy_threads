double discountedPrice({required double originalPrice, required double discountPercentage}) {
  if (discountPercentage < 0 || discountPercentage > 100) {
    throw ArgumentError("Discount percentage must be between 0 and 100.");
  }

  double discountAmount = (originalPrice * discountPercentage) / 100;
  double discountedPrice = originalPrice - discountAmount;

  return double.parse(discountedPrice.toStringAsFixed(2));
}
