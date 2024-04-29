import 'Room.dart';

class TripleRoom extends Room {
  TripleRoom() {
    roomPrice = Room.tripleRoomPrice;
    setPrice();
  }
  @override
  void setRoomType() {
    roomType = "Triple";
  }

  @override
  void setPrice() {
    if (roomFloor >= 7) {
      roomPrice = Room.tripleRoomPrice *= 1.3;
    } else if (roomFloor >= 0) {
      roomPrice = Room.tripleRoomPrice *= 1.2;
    }

    if (hasWiFi) {
      roomPrice += 20;
    }
  }
}
