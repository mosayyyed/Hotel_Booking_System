// import '../Room/Room.dart';
// import 'Booking.dart';
// import 'Guest.dart';
// import 'Payment.dart';
//
// class Hotel {
//   late String name;
//   late String address;
//   late List<Room> rooms;
//
//   Hotel(this.name, this.address, this.rooms);
//
//   void addRoom(Room room) {
//     rooms.add(room);
//   }
//
//   void removeRoom(int roomNumber) {
//     rooms.removeWhere((room) => room.number == roomNumber);
//   }
//
//   List<Room> getAvailableRooms(DateTime startDate, DateTime endDate) {
//     return rooms;
//   }
//
//   Booking bookRoom(DateTime startDate, DateTime endDate, Guest guest, Room room,
//       Payment payment) {
//     if (isRoomAvailable(startDate, endDate)) {
//       Booking booking = Booking(startDate, endDate, guest, room, payment);
//       return booking;
//     } else {
//       return null;
//     }
//   }
// }
