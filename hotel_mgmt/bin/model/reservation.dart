import '../utils/colorful_print.dart';
import 'person.dart';
import 'room.dart';

class Reservation {
  Room room;
  String dateIn;
  String dateOut;
  String timeIn;
  String timeOut;
  Person person;

  Reservation(
      {required this.room,
      required this.dateIn,
      required this.dateOut,
      required this.timeIn,
      required this.timeOut,
      required this.person});

  static List<Reservation> reservations = [
    Reservation(
        room: Room.rooms.first,
        dateIn: '2024-12-10',
        dateOut: '2024-12-12',
        timeIn: '10:00am',
        timeOut: '12:00pm',
        person: Person.people.first),
    Reservation(
        room: Room.rooms.last,
        dateIn: '2024-12-12',
        dateOut: '2024-12-13',
        timeIn: '10:30am',
        timeOut: '11:00pm',
        person: Person.people.last),
  ];

  static void printReservations() {
    for (var r in reservations) {
      ColorfulPrint.yellow('----------------------------\n');
      ColorfulPrint.yellow('room: ${r.room.roomNum}');
      ColorfulPrint.yellow('date in: ${r.dateIn}');
      ColorfulPrint.yellow('date out: ${r.dateOut}');
      ColorfulPrint.yellow('time in: ${r.timeIn}');
      ColorfulPrint.yellow('time out: ${r.timeOut}');
      ColorfulPrint.green('resrved by: ${r.person.name}');
      ColorfulPrint.yellow('\n----------------------------');
    }
  }
}
