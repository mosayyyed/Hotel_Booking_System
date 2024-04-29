import 'Room.dart';

class SingleRoom extends Room {
  SingleRoom() {
    roomPrice = Room.singleRoomPrice;
    setPrice();
  }
  @override
  void setRoomType() {
    roomType = "Single";
  }

  @override
  void setPrice() {
    if (roomFloor >= 7) {
      roomPrice = Room.singleRoomPrice *= 1.3;
    } else if (roomFloor >= 0) {
      roomPrice = Room.singleRoomPrice *= 1.2;
    }

    if (hasWiFi) {
      roomPrice += 20;
    }
  }
}
