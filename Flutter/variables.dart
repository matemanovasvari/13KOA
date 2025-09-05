import "dart:io";

void main(){
    int postalCode = 6721;
    String city = "Szeged";
    String street = "Gutenberg";
    int address = 11;
    double average = 4.45497548;

    print("Enter your name:");
    String? name = stdin.readLineSync();

    print("$name lives in $postalCode, $city, $street, $address. His average is: ${average.toStringAsFixed(3)}");
}