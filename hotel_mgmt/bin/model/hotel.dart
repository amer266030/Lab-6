import '../utils/colorful_print.dart';
import 'room.dart';

class Hotel {
  String name;
  List<Room> rooms;
  String location;

  Hotel({required this.name, required this.rooms, required this.location});

  // Static hotel Data
  static List<Hotel> hotels = [
    Hotel(name: 'AAA', rooms: Room.rooms, location: 'Rio'),
  ];

  // Print all hotels
  static void printHotels() {
    for (var h in hotels) {
      ColorfulPrint.yellow('----------------------------\n');
      ColorfulPrint.yellow('Name: ${h.name}');
      print('Rooms:');
      Room.printRooms(Room.rooms);
      ColorfulPrint.yellow('Location: ${h.location}');
      ColorfulPrint.yellow('\n----------------------------');
    }
  }
}
