import './reservation.dart';

void main(List<String> arguments) {
  String? dateIn = "2024-12-25";
  String? dateOut = "2024-12-25";
  String? timeIn = "10";
  String? timeOut = "12";
  String? person = "Sami";
  int? room = 12;

  List<Map<String, dynamic>> userReservation = [
    {
      "date_in": dateIn,
      "date_out": dateOut,
      "time_in": timeIn,
      "time_out": timeOut,
      "person": person,
      "room_number": room
    }
  ];

  checekReservation(userReservation);
}
