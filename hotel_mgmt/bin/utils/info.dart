import '../model/hotel.dart';
import '../model/person.dart';
import '../model/reservation.dart';

class Info {
  static void instructions() {
    print('''

        1 | List Hotels
        2 | List People
        3 | List Reservations
        i | info
        q | quit


      ''');
  }

  static void handleUserInput(String str) {
    switch (str) {
      case '1':
        Hotel.printHotels();
      case '2':
        Person.printPeople();
      case '3':
        Reservation.printReservations();
      default:
        unknownCommand();
    }
  }

  static void unknownCommand() => print('UNKNOWN COMMAND!');
}
