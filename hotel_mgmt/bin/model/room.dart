import '../utils/colorful_print.dart';

class Room {
  double price;
  int roomNum;
  bool occupied;

  Room({required this.price, required this.roomNum, required this.occupied});

  static List<Room> rooms = [
    Room(price: 1200, roomNum: 101, occupied: false),
    Room(price: 1100, roomNum: 102, occupied: true),
    Room(price: 900, roomNum: 103, occupied: false)
  ];

  static void printRooms(List<Room> roomList) {
    for (var r in roomList) {
      ColorfulPrint.green('----------------------------\n');
      ColorfulPrint.green('prince: ${r.price}');
      ColorfulPrint.green('room num: ${r.roomNum}');
      ColorfulPrint.green('is occupied: ${r.occupied}');
      ColorfulPrint.green('\n----------------------------');
    }
  }
}
