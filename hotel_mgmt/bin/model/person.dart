import '../utils/colorful_print.dart';

class Person {
  int? id;
  String name, phone, email;

  Person({required this.name, required this.phone, required this.email}) {
    id = generateId();
  }

  // Genrate user id
  int generateId() {
    return DateTime.now().millisecondsSinceEpoch;
  }

  // Static people data
  static List<Person> people = [
    Person(name: 'John', phone: '123 123 123', email: 'a@example.com'),
    Person(name: 'Jack', phone: '123 456 999', email: 'j@example.com')
  ];

  // Print all people
  static void printPeople() {
    for (var p in people) {
      print('\n');
      ColorfulPrint.yellow('Name: ${p.name}');
      ColorfulPrint.yellow('Phone ${p.phone}');
      ColorfulPrint.yellow('Email ${p.email}');
      print('\n');
    }
  }
}
