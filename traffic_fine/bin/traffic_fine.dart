import 'dart:io';

void main() {
  /*
Traffic Fine Calculator
User inputs speed limit, actual speed, and if they have a license
Speed more than 20 = fine 1000
Speed over by 1–20 = fine 500
No license? Add 500 to the fine
  */
  int fine = 0;
  print("Hi! Can you enter your actual speed (Km/h)? ");
  int speed = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  if (speed == 0) {
    print("Invalid Input");
    return;
  }
  print("And speed limit is (Km/h)?");
  int limit = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  if (limit == 0) {
    print("Invalid Input");
    return;
  }
  print("Do you have a license? (yes/no): ");
  String? license = stdin.readLineSync() ?? '0';
  if (license.toLowerCase() != "yes" &&
      license.toLowerCase() != 'no'&&
      license == "0") {
    print("Invalid Input");
    return;
  }
  int diff = speed - limit;
  if (diff >0 && diff <= 20) {
    fine = 500;
  } else if (diff > 20) {
    fine = 1000;
  } else if (diff <= 0) {
    print("You are within the speed limit.");
  }

  fine = license.toLowerCase() == 'yes' ? fine : fine + 500;
  print("Your fine is $fine");
}
