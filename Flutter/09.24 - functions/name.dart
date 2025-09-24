import 'dart:io';

String getName() {
  print('Kérlek add meg a vezetékneved:');
  String firstName = stdin.readLineSync()!;
  
  print('Kérlek add meg az utóneved:');
  String lastName = stdin.readLineSync()!;
  
  return '$firstName $lastName';
}

void fullName() {
  String completeName = getName();
  print('A teljes neved: $completeName');
}

void main() {
  fullName();
}