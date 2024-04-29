import 'Room.dart';

class DoubleRoom extends Room {
  DoubleRoom() {
    roomPrice = Room.doubleRoomPrice;
    setPrice();
  }
  @override
  void setRoomType() {
    roomType = "Double";
  }

  @override
  void setPrice() {
    if (roomFloor >= 7) {
      roomPrice = Room.doubleRoomPrice *= 1.3;
    } else if (roomFloor >= 0) {
      roomPrice = Room.doubleRoomPrice *= 1.2;
    }

    if (hasWiFi) {
      roomPrice += 20;
    }
  }
}
