import 'dart:io';

abstract class Room {
  static int _numberOfRooms = 0;
  static double singleRoomPrice = 100;
  static double doubleRoomPrice = 150;
  static double tripleRoomPrice = 200;

  late double roomPrice;
  late int roomNumber;
  late String roomType;
  late int roomFloor;
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
    roomNumber = _numberOfRooms;
  }

  int getNumber() {
    return roomNumber;
  }

  void setRoomType();

  String getRoomType() {
    return roomType;
  }

  void setFloor() {
    while (true) {
      print("Enter the floor for the room:");
      String input = stdin.readLineSync() ?? "";
      try {
        roomFloor = int.parse(input);
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
    return roomPrice;
  }

  void changeBasePrice() {
    print("Enter the type room");
    if (roomType == "Single") {
      print("Enter the base price for Single room:");
      singleRoomPrice = double.parse(stdin.readLineSync() ?? "100");
    } else if (roomType == "Double") {
      print("Enter the base price for Double room:");
      doubleRoomPrice = double.parse(stdin.readLineSync() ?? "150");
    } else if (roomType == "Triple") {
      print("Enter the base price for Triple room:");
      tripleRoomPrice = double.parse(stdin.readLineSync() ?? "200");
    }
  }
}
