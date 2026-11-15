import 'dart:io';

class Restaurant {
  final String name;
  final String address;
  final double salary;
  final String date;
  final String phone;

  final List<String> menu;
  final List<double> prices;

  Restaurant({
    required this.name,
    required this.address,
    required this.salary,
    required this.date,
    required this.phone,
    required this.menu,
    required this.prices,
  });

  void displayInfo() {
    print("================================");
    print("    Restaurant Information");
    print("================================");
    print("Name: $name");
    print("Address: $address");
    print("Salary: $salary");
    print("Date: $date");
    print("Phone: $phone");
  }}
  
  class Customer {
  final String name;
  final String address;
  final String phone;

  Customer({
    required this.name,
    required this.address,
    required this.phone,
  });

  void displayInfo() {
    print("\n================================");
    print("      Customer Information");
    print("================================");
    print("Name: $name");
    print("Address: $address");
    print("Phone: $phone");
  }
}

void main() {

  stdout.write("\n Enter restaurant name : ");
  String? NAME = stdin.readLineSync();

  stdout.write("Enter restaurant address : ");
  String? ADDRESS = stdin.readLineSync();
  
  stdout.write("Enter restaurant salary : ");
  double SALARY = double.parse(stdin.readLineSync()!);

  stdout.write("Enter restaurant date : ");
  String? DATA = stdin.readLineSync();

  stdout.write("Enter restaurant phone : ");
  String? PHONE = stdin.readLineSync();

  stdout.write("\n pizza : 150 EGP \n Burger : 100 EGP \n Pasta : 120 EGP \n Chicken : 180 EGP \n");

  List<String> menu = [
    "Pizza",
    "Burger",
    "Pasta",
    "Chicken"
  ];

  List<double> prices = [
    150,
    100,
    120,
    180 
  ];
  
  stdout.write("\n Enter your choice: ");
  String? choice = stdin.readLineSync();

if (choice == "pizza") {
  //double PRICE = 150;
  print("Pizza is available - Price: 150");
  
} else if (choice == "burger") {
  //double PRICE = 100;
  print("Burger is available - Price: 100");
} else if (choice == "Pasta") {
  //double PRICE = 120;
  print("Pasta is available - Price: 120");
} else if (choice == "chicken") {
  //double PRICE= 180;
  print("Chicken is available - Price: 180");
} else {
  print("Not available");
}

  Restaurant r1 = Restaurant(
    name: NAME!,
    address: ADDRESS!,
    salary: SALARY,
    date: DATA!,
    phone: PHONE!,
    menu: menu,
    prices: prices,
  );

  stdout.write("\nEnter customer name : ");
  String? name = stdin.readLineSync();

  stdout.write("Enter customer address : ");
  String? address = stdin.readLineSync();

  stdout.write("Enter customer phone : ");
  String? phone = stdin.readLineSync();

  Customer p1 = Customer(
    name: name!,
    address: address!,
    phone: phone!,
  );



    r1.displayInfo();

    p1.displayInfo();

    print("\n================================");
    print("     RESTAURANT SHEET");
    print("================================");
    print("Customer: ${p1.name}");
    print("Your choice : $choice");
    //print("Price $PRICE EGP");
    print("================================");

}
