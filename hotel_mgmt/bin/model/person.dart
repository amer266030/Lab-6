/*
*
* Person class
*
* */
class Person {
    int? id;
    String name, phone, email;

    // constructor
    Person({required this.name, required this.phone, required this.email}){
        id = generateId();
    }

    // Generate user id
    int generateId() {
        // implementation here
        return DateTime
            .now()
            .millisecondsSinceEpoch;
    }

    // Method to update person's information
    updateInfo({String? name, String? phone, String? email, int? id}) {
        // implementation here
        if (name != null) this.name = name;
        if (phone != null) this.phone = phone;
    }
}