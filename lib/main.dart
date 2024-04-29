import 'dart:io';

import 'Guest/Guest.dart';
import 'Hotel/Hotel.dart';
import 'Payment/Payment.dart';
import 'Room/Room.dart';
import 'Room/SingleRoom.dart';

void main() {
  bool exit = false;

  while (!exit) {
    print("Welcome to our hotel booking system!");
    print("1. Check available rooms");
    print("2. Book a room");
    print("3. Exit");

    stdout.write("Enter your choice: ");
    var choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (choice) {
      case 1:
        checkAvailableRooms();
        break;
      case 2:
        bookRoom();
        break;
      case 3:
        print("Exiting the program. Goodbye!");
        exit = true;
        break;
      default:
        print("Invalid choice. Please enter a number from 1 to 3.");
    }
  }
}

void checkAvailableRooms() {
  Hotel hotel = Hotel("Awesome Hotel", "123 Main Street", []);
  DateTime startDate = DateTime.now();
  DateTime endDate = startDate.add(Duration(days: 3));
  hotel.checkAvailableRooms(startDate, endDate);
}

void bookRoom() {
  var hotel = Hotel("Awesome Hotel", "123 Main Street", []);
  Room singleRoom = SingleRoom();
  Guest guest = Guest("John Doe", "john@example.com");
  DateTime startDate = DateTime.now();
  DateTime endDate = startDate.add(Duration(days: 3));
  Payment payment = Payment("Credit Card", 300);
  hotel.bookRoom(startDate, endDate, guest, singleRoom, payment);
}
