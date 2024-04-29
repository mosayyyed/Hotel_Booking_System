import 'Room.dart';

class DoubleRoom extends Room {
  DoubleRoom() {
    price = Room.doubleRoomPrice;
    setPrice();
  }
  @override
  void setRoomType() {
    type = "Double";
  }

  @override
  void setPrice() {
    if (floor >= 7) {
      price = Room.doubleRoomPrice *= 1.3;
    } else if (floor >= 0) {
      price = Room.doubleRoomPrice *= 1.2;
    }

    if (hasWiFi) {
      price += 20;
    }
  }
}
