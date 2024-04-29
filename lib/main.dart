import 'dart:io';

import 'Guest/Guest.dart';
import 'Hotel/Hotel.dart';
import 'Payment/Payment.dart';
import 'Room/DoubleRoom.dart';
import 'Room/Room.dart';
import 'Room/SingleRoom.dart';
import 'Room/TripleRoom.dart';

void main() {
  bool exit = false;
  Hotel hotel = Hotel("IEEE Hotel", "123 Main Street", []);

  while (!exit) {
    print("Welcome to our hotel booking system");
    print("1. Check available rooms");
    print("2. Book a room");
    print("3. Add available room");
    print("4. Exit");

    stdout.write("Enter your choice: ");
    var choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (choice) {
      case 1:
        checkAvailableRooms(hotel);
        break;
      case 2:
        bookRoom(hotel);
        break;
      case 3:
        addRoom(hotel);
        break;
      case 4:
        print("Exiting the program. Goodbye!");
        exit = true;
        break;
      default:
        print("Invalid choice. Please enter a number from 1 to 4.");
    }
  }
}

void checkAvailableRooms(Hotel hotel) {
  DateTime startDate = DateTime.now();
  DateTime endDate = startDate.add(Duration(days: 7));
  hotel.checkAvailableRooms(startDate, endDate);
}

void bookRoom(Hotel hotel) {
  print("Available rooms:");
  List<Room> availableRooms = hotel.getAvailableRooms(
      DateTime.now(), DateTime.now().add(Duration(days: 7)));
  for (Room room in availableRooms) {
    print(
        "${room.roomNumber}: ${room.roomType}, Floor: ${room.roomFloor}, Price: ${room.getPrice()}");
  }

  stdout.write("Enter room number to book: ");
  int roomNumber = int.tryParse(stdin.readLineSync()!) ?? 0;

  Room selectedRoom = availableRooms.firstWhere(
      (room) => room.roomNumber == roomNumber,
      orElse: () => throw "Room not found");

  Guest guest = Guest("Mohamed Elsayed", "mosayyyed@gmail.com", "0123456789");
  DateTime startDate = DateTime.now();
  DateTime endDate = startDate.add(Duration(days: 7));
  Payment payment = Payment("Credit Card", selectedRoom.getPrice());
  hotel.bookRoom(startDate, endDate, guest, selectedRoom, payment);
}

void addRoom(Hotel hotel) {
  stdout.write("Enter the room type (Single/Double/Triple): ");
  String roomType = stdin.readLineSync()?.toLowerCase() ?? '';
  Room? room;
  switch (roomType) {
    case "single":
      room = SingleRoom();
      break;
    case "double":
      room = DoubleRoom();
      break;
    case "triple":
      room = TripleRoom();
      break;
    default:
      print("Invalid room type.");
      return;
  }
  hotel.addRoom(room);
  print("Room added successfully!");
}
