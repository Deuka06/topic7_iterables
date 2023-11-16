void main() {
  var prices = [34, 56, 789, 345, 900, 342, 12, 60, 890];
  var below500 = [];
  var above500 = [];

  for (var i = 0; i < prices.length; i++) {
    if (prices[i] < 500) {
      below500.add(prices[i]);
    } else {
      above500.add(prices[i]);
    }
  }

  print("Below 500: $below500");
  print("Above 500: $above500");
}