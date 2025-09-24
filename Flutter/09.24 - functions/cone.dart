import 'dart:math';
import 'dart:io';

double kupTerfogat(double r, double h) {
  return (pi * r * r * h) / 3;
}

double kupFelszin(double r, double h) {
  double oldalHossz = sqrt(r * r + h * h);
  return pi * r * (r + oldalHossz);
}

void main() {
  print('Adj meg egy tizedes szamot:');
  double input = double.parse(stdin.readLineSync()!);
  
  double volume = kupTerfogat(input, input);
  double surfaceArea = kupFelszin(input, input);
  
  print('A kúp térfogata: $volume');
  print('A kúp felszíne: $surfaceArea');
}