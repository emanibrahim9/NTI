import "dart:io";
void main() {
  List<List<String>> seats = [
    ['E', 'E', 'E', 'E', 'E'],
    ['E', 'E', 'E', 'E', 'E'],
    ['E', 'E', 'E', 'E', 'E'],
    ['E', 'E', 'E', 'E', 'E'],
    ['E', 'E', 'E', 'E', 'E'],
  ];
  Map<String, Map<String, String>> userData = {};
  print("Welcome To Our Theater... ");

  while (true) {
    displayOption();
    print("Enter your choice: ");
    int? option = handleInput((x) => int.tryParse(x));
    switch (option) {
      case 1:
        print("Enter row (1-5):");
        int row = handleInput((x) => int.tryParse(x));
        print("Enter column (1-5):");
        int coulmn = handleInput((x) => int.tryParse(x));
        if (row < 1 || coulmn < 1 || row > 5 || coulmn > 5) {
          print("Invalid seat number!!");
        } else {
          if (seats[row - 1][coulmn - 1] == 'B') {
            print("Sorry!! this seat is booked");
          } else {
            seats[row - 1][coulmn - 1] = 'B';
            print("Please Enter Your Name:");
            String name = handleInput();
            print("Please Enter Your Phone Number:");
            String phone = handleInput();
            if (name.isEmpty || phone.isEmpty) {
              print("Empty input!!");
            } else {
              userData["$row,$coulmn"] = {"name": name, "phone": phone};
              print("Seat booked successfully!");
            }
          }
        }
      case 2:
        print("\nTheater Seats:");
        for (var item in seats) {
          print(item.join(' '));
        }
      case 3:
        if (userData.isEmpty) {
          print("No bookings yet.");
        } else {
          print("\nUsers Booking Details:");
          userData.forEach((key, value) {
            print("Seat $key:  ${value['name']} - ${value['phone']}");
          });
        }
      case 4:
        print("Bye ! See You Back ");
        return;
      default:
        print("Invalid choice, please try again.");
    }
  }
}

void displayOption() {
  print("""Press 1 → Book new seat  
Press 2 → Show the theater seats  
Press 3 → Show users data  
Press 4 → Exit
""");
}

dynamic handleInput([dynamic Function(String)? casting]) {
  while (true) {
    String input = stdin.readLineSync() ?? '';
    if (input.isEmpty) {
      print('Invalid input. Please try again.');
    } else {
      var castedValue = casting == null ? input : casting(input);
      if (castedValue == null) {
        print('Invalid input. Please try again.');
      } else {
        return castedValue;
      }
    }
  }
}
