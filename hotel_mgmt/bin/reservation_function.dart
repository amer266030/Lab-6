import 'global_variabels.dart';

checekReservation(List<Map<String, dynamic>> reservationRome) {
  for (var i = 0; i < reservationRome.length; i++) {
    print("$reservationRome");
    if (reservationRome[i]["room"] != allReservation[i]["room"] ||
        reservationRome[i]["date_in"] != allReservation[i]["date_in"] ||
        reservationRome[i]["date_out"] != allReservation[i]["date_out"]) {
      allReservation.add(reservationRome[i]);
      print(allReservation);
    } else {
      print("You can't reserve this room");
    }
  }
}
