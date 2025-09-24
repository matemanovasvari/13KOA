import 'dart:math';
import 'dart:io';

double abTerulete(double a, double b) {
  return a * b;
}

double acTerulete(double a, double c) {
  return a * c;
}

double bcTerulete(double b, double c) {
  return b * c;
}

double felulet(double a, double b, double c) {
  return 2 * (abTerulete(a, b) + acTerulete(a, c) + bcTerulete(b, c));
}

double terfogat(double a, double b, double c) {
  return a * b * c;
}

void main() {
  print('Add meg a téglatest három élét (a, b, c):');
  double a = double.parse(stdin.readLineSync()!);
  double b = double.parse(stdin.readLineSync()!);
  double c = double.parse(stdin.readLineSync()!);
  
  double surfaceArea = felulet(a, b, c);
  double volume = terfogat(a, b, c);
  
  print('A téglatest lapjainak területei:');
  print('Ab területe: ${abTerulete(a, b)}');
  print('Ac területe: ${acTerulete(a, c)}');
  print('Bc területe: ${bcTerulete(b, c)}');
  
  print('A téglatest felszíne: $surfaceArea');
  print('A téglatest térfogata: $volume');
}