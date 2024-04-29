import '../Guest/Guest.dart';
import '../Payment/Payment.dart';
import '../Room/Room.dart';

class Booking {
  late DateTime startDate;
  late DateTime endDate;
  late Guest guest;
  late Room room;
  late Payment payment;

  Booking(this.startDate, this.endDate, this.guest, this.room, this.payment);
}
