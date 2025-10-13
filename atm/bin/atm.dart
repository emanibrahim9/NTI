import 'dart:io';

void main() {
  double balance = 1000;
  print("Welcome to Simple ATM!!");
  print("Your starting balance is $balance\$");
  bool count = true;
  while (count) {
    print("Choose an option:");
    print("""    1 → Check Balance
    2 → Withdraw
    3 → Deposit
    4 → Exit""");
    print("Enter choice:");
    String? choice = stdin.readLineSync();
    if (choice == null || choice.isEmpty) {
      print("Invalid Input ,try again!!");
      continue;
    }
    int? choice1 = int.tryParse(choice);
    if (choice1 == 1) {
      print("Your Current Balance is $balance\$");
    } else if (choice1 == 2) {
      print("Enter amount to withdraw:");
      String? withdraw = stdin.readLineSync();
      if (withdraw == null || withdraw.isEmpty) {
        print("Invalid Input ,try again!!");
        continue;
      }
      double? withdraw1 = double.tryParse(withdraw);
      if (withdraw1 == null) {
        print("Invalid Input !,Please Enter only number.");
        continue;
      }
      if (withdraw1 > balance) {
        print("Insufficient balance! Your current balance is $balance\$");
      } else {
        balance -= withdraw1;
        print("You withdrew $withdraw1\$ and you still have $balance\$");
      }
    } else if (choice1 == 3) {
      print("Enter amount to deposit :");
      String? deposit = stdin.readLineSync();
      if (deposit == null || deposit.isEmpty) {
        print("Invalid Input ,try again!!");
        continue;
      }
      double? deposit1 = double.tryParse(deposit);
      if (deposit1 == null) {
        print("Invalid Input !,Please Enter only number.");
        continue;
      }
      if (deposit1 <= 0) {
        print("Invalid amount");
      } else {
        balance += deposit1;
        print("You deposited $deposit1\$ and you now have $balance\$");
      }
    } else if (choice1 == 4) {
      print("Thank you for using the ATM!");
      //count = false;
      break;
    } else if (choice1 == null) {
      print("Please Enter only number of the choice");
    } else {
      print("Invalid choice");
    }
  }
}

