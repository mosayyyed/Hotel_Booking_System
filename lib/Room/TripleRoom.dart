import 'Room.dart';

class TripleRoom extends Room {
  TripleRoom() {
    price = Room.tripleRoomPrice;
    setPrice();
  }
  @override
  void setRoomType() {
    type = "Triple";
  }

  @override
  void setPrice() {
    if (floor >= 7) {
      price = Room.tripleRoomPrice *= 1.3;
    } else if (floor >= 0) {
      price = Room.tripleRoomPrice *= 1.2;
    }

    if (hasWiFi) {
      price += 20;
    }
  }
}
