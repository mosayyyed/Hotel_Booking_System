import 'Room/SingleRoom.dart';

void main(List<String> args) {
  SingleRoom room1 = SingleRoom();

  print(room1.getPrice());
  room1.changeBasePrice();
  print(room1.getPrice());
}
