import '../Booking/Booking.dart';
import '../Guest/Guest.dart';
import '../Payment/Payment.dart';
import '../Room/Room.dart';

class Hotel {
  late String name;
  late String address;
  late List<Room> rooms;

  Hotel(this.name, this.address, this.rooms);

  void addRoom(Room room) {
    rooms.add(room);
  }

  void removeRoom(int roomNumber) {
    rooms.removeWhere((room) => room.number == roomNumber);
  }

  List<Room> getAvailableRooms(DateTime startDate, DateTime endDate) {
    List<Room> availableRooms = [];
    for (Room room in rooms) {
      if (room.isAvailable) {
        availableRooms.add(room);
      }
    }
    return availableRooms;
  }

  void bookRoom(DateTime startDate, DateTime endDate, Guest guest, Room room,
      Payment payment) {
    if (room.isAvailable) {
      Booking booking = Booking(startDate, endDate, guest, room, payment);
      room.isAvailable = false;
      print(
          'Room ${room.number} has been booked for ${guest.name} from ${startDate} to ${endDate}.');
    } else {
      print('Room ${room.number} is not available for booking.');
    }
  }

  void checkAvailableRooms(DateTime startDate, DateTime endDate) {
    List<Room> availableRooms = getAvailableRooms(startDate, endDate);
    if (availableRooms.isNotEmpty) {
      print('Available rooms from ${startDate} to ${endDate}:');
      for (Room room in availableRooms) {
        print('Room ${room.number}: ${room.type}, ${room.floor}');
      }
    } else {
      print('No rooms available from ${startDate} to ${endDate}.');
    }
  }
}
