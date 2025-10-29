import 'dart:io';

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

void main() {
  List<Product> products = [];
  List<Map<String, dynamic>> invoices = [];

  while (true) {
    displayOptions();
    int option = handleInput(
      prompt: "Enter Option Number (1-6):",
      casting: (input) {
        int value = int.tryParse(input) ?? 0;
        return (value >= 1 && value <= 6) ? value : null;
      },
    );

    switch (option) {
      case 1:
        addProduct(products);
        break;

      case 2:
        showProducts(products);
        break;

      case 3:
        updateProduct(products);
        break;

      case 4:
        purchaseProducts(products, invoices);
        break;

      case 5:
        showInvoices(invoices);
        break;

      case 6:
        print('Exiting Inventory Management System. Goodbye!');
        return;

      default:
        print("Invalid Option! please try again.");
    }
  }
}

//  Add New Product
void addProduct(List<Product> products) {
  String name = handleInput(prompt: "Enter Product Name:");
  double price = handleInput(
    prompt: "Enter Product Price:",
    casting: (input) {
      double value = double.tryParse(input) ?? 0;
      return (value > 0) ? value : null;
    },
  );
  int quantity = handleInput(
    prompt: "Enter Product Quantity:",
    casting: (input) {
      int value = int.tryParse(input) ?? 0;
      return (value > 0) ? value : null;
    },
  );

  products.add(Product(name, price, quantity));
  print("Product added successfully!\n");
}

//  Show Products
void showProducts(List<Product> products) {
  if (products.isEmpty) {
    print("No products available!\n");
    return;
  }

  print("Products List:");
  for (int i = 0; i < products.length; i++) {
    print(
      "${i + 1}. ${products[i].name} - \$${products[i].price} - Qty: ${products[i].quantity}",
    );
  }
  print('');
}

//  Update Product
void updateProduct(List<Product> products) {
  if (products.isEmpty) {
    print("No products to update.\n");
    return;
  }

  showProducts(products);
  int index = handleInput(
    prompt: "Enter product number to update:",
    casting: (input) {
      int value = int.tryParse(input) ?? 0;
      return (value > 0 && value <= products.length) ? value - 1 : null;
    },
  );

  int newQty = handleInput(
    prompt: "Enter new quantity:",
    casting: (input) {
      int value = int.tryParse(input) ?? 0;
      return (value > 0) ? value : null;
    },
  );

  products[index].quantity = newQty;
  print("Quantity updated successfully!\n");
}

// Buy Products
void purchaseProducts(
  List<Product> products,
  List<Map<String, dynamic>> invoices,
) {
  if (products.isEmpty) {
    print("No products available for purchase.\n");
    return;
  }

  String customerName = handleInput(prompt: "Enter your name:");
  List<Map<String, dynamic>> cart = [];
  double total = 0;

  while (true) {
    print("Enter product name (or 'done' to finish):");
    String productName = stdin.readLineSync() ?? '';

    if (productName.toLowerCase() == 'done') break;

    var selected = products.where(
      (p) => p.name.toLowerCase() == productName.toLowerCase(),
    );

    if (selected.isEmpty) {
      print("Product not found.\n");
      continue;
    }

    Product product = selected.first;

    int qty = handleInput(
      prompt: "Enter quantity:",
      casting: (input) {
        int value = int.tryParse(input) ?? 0;
        return (value > 0 && value <= product.quantity) ? value : null;
      },
    );

    double totalPrice = product.price * qty;
    product.quantity -= qty;

    cart.add({
      "name": product.name,
      "qty": qty,
      "price": product.price,
      "total": totalPrice,
    });

    total += totalPrice;
    print("Added $qty x ${product.name} to your cart.\n");
  }

  if (cart.isNotEmpty) {
    invoices.add({
      "customer": customerName,
      "items": cart,
      "final_total": total,
    });

    print("Purchase completed! Total = \$$total");
  } else {
    print("No items purchased.\n");
  }
}

// Show Invoices
void showInvoices(List<Map<String, dynamic>> invoices) {
  if (invoices.isEmpty) {
    print("No invoices available.\n");
    return;
  }

  for (int i = 0; i < invoices.length; i++) {
    print("Invoice #${i + 1}");
    print("Customer: ${invoices[i]['customer']}");
    print("Items:");
    for (var item in invoices[i]['items']) {
      print("- ${item['name']} x${item['qty']} = \$${item['total']}");
    }
    print("Total = \$${invoices[i]['final_total']}\n");
  }
}

void displayOptions() {
  print('''
--- Grocery Shopping System ---
1. Add New Product
2. Show Products
3. Update Product
4. Purchase Products
5. Show Invoices
6. Exit
''');
}

// استقبال الداتا من اليوزر
dynamic handleInput({
  required String prompt,
  dynamic Function(String)? casting,
}) {
  while (true) {
    stdout.write("$prompt ");
    String input = stdin.readLineSync() ?? '';
    if (input.isEmpty) {
      print('Invalid input. Please try again.');
      continue;
    }

    var value = casting == null ? input : casting(input);
    if (value == null) {
      print('Invalid input. Please try again.');
    } else {
      return value;
    }
  }
}
