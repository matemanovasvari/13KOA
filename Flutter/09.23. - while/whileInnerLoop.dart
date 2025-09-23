import 'dart:io';

void main() {
  stdout.write('Adj meg egy számot 3 és 9 között: ');
  int szam = int.parse(stdin.readLineSync()!);

  int i = 0;
  outerLoop:
  while (i <= 10) {
    if (i == szam) break outerLoop;

    int j = 0;
    while (j <= 10) {
      if (j == szam) break;
      print('i = $i, j = $j');
      j++;
    }
    i++;
  }
}