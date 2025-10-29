void main() {
  /** Multi-Tier Parking Fee Calculator
    First 2 hours: free
    Hours 3–5: 10 per hour
    After that: 20 per hour
    +50 flat if parked on weekend **/

  int hour = 6;
  int cost = 0;
  bool weekEnd = true;

  if (hour <= 2) {
    cost = 0;
  } else if (hour >= 3 && hour <= 5) {
    hour -= 2;
    cost = hour * 10;
  } else if (hour >= 6) {
    hour -= 2;
    cost = ((hour - 3) * 20) + (3 * 10);
  }
  cost = weekEnd ? cost + 50 : cost;
  print("The Total cost = $cost \$");
}
