import 'dart:io';

abstract class Room {
  static int _numberOfRooms = 0;
  static double singleRoomPrice = 100;
  static double doubleRoomPrice = 150;
  static double tripleRoomPrice = 200;

  late double price;
  late int number;
  late String type;
  late int floor;
  late bool hasWiFi;
  bool isAvailable = true;

  Room() {
    setNumber();
    setRoomType();
    setFloor();
    setHasWiFi();
  }
  void setNumber() {
    _numberOfRooms++;
    number = _numberOfRooms;
  }

  int getNumber() {
    return number;
  }

  void setRoomType();

  String getRoomType() {
    return type;
  }

  void setFloor() {
    while (true) {
      print("Enter the floor for the room:");
      String input = stdin.readLineSync() ?? "";
      try {
        floor = int.parse(input);
        break;
      } catch (e) {
        print("Invalid input. Please enter a valid integer floor number.");
      }
    }
  }

  int getFloor(int floor) {
    return floor;
  }

  void setHasWiFi() {
    while (true) {
      print("Does the room have WiFi? (yes/no):");
      String input = stdin.readLineSync()?.toLowerCase() ?? "";
      if (input == "yes" || input == "no") {
        hasWiFi = input == "yes";
        break;
      } else {
        print("Invalid input. Please enter 'yes' or 'no'.");
      }
    }
  }

  bool getHasWiFI() {
    return hasWiFi;
  }

  void setPrice();

  double getPrice() {
    return price;
  }

  void changeBasePrice() {
    if (type == "Single") {
      print("Enter the base price for Single room:");
      singleRoomPrice = double.parse(stdin.readLineSync() ?? "100");
    } else if (type == "Double") {
      print("Enter the base price for Double room:");
      doubleRoomPrice = double.parse(stdin.readLineSync() ?? "150");
    } else if (type == "Triple") {
      print("Enter the base price for Triple room:");
      tripleRoomPrice = double.parse(stdin.readLineSync() ?? "200");
    }
  }
}
