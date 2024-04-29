import 'Room.dart';

class SingleRoom extends Room {
  SingleRoom() {
    price = Room.singleRoomPrice;
    setPrice();
  }
  @override
  void setRoomType() {
    type = "Single";
  }

  @override
  void setPrice() {
    if (floor >= 7) {
      price = Room.singleRoomPrice *= 1.3;
    } else if (floor >= 0) {
      price = Room.singleRoomPrice *= 1.2;
    }

    if (hasWiFi) {
      price += 20;
    }
  }
}
