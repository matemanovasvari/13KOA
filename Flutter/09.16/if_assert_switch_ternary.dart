import 'dart:io';

void main(){
    print("Enter a number:");
    String input = stdin.readLineSync()!;
    int number = int.parse(input);

    print(number % 2 == 0 ? "Páros" : "Páratlan");

    if(number == 1){
        print("Elégtelen!");
    }
    else if(number == 2){
        print("Elégséges!");
    }
    else if(number == 3){
        print("Közepes!");
    }
    else if(number == 4){
        print("Jó!");
    }
    else if(number == 5){
        print("Jeles!");
    }
    else{
        print("Érvénytelen osztályzat!");
    }

    switch (number) {
        case 1:
            print("Elégtelen!");
            break;
        case 2:
            print("Elégséges!");
        break;
        case 3:
            print("Közepes!");
        break;
        case 4:
            print("Jó!");
        break;
        case 5:
            print("Jeles!");
        break;
        default:
            print("Érvénytelen osztályzat!");
        break;
    }

    print("Enter a number:");
    String input1 = stdin.readLineSync()!;
    int number1 = int.parse(input1);

    print("Enter a 2nd number:");
    String input2 = stdin.readLineSync()!;
    int number2 = int.parse(input2);

    int result = 0;

    if(number1 > number2){
        result = number1 - number2;
        print("$number1 is bigger than $number2, difference is $result");
    }
    else if(number2 > number1){
        result = number2 - number1;
        print("$number2 is bigger than $number1, difference is $result");
    }

    stdout.write('Adj meg egy egész számot: ');
    int number = int.parse(stdin.readLineSync()!);

    if (number % 2 == 0) {
        print('A szám páros.');
    } else {
        print('A szám páratlan.');
    }

    if (number > 0) {
        print('A szám pozitív.');
    } else if (number == 0) {
        print('A szám nulla.');
    } else {
        print('A szám negatív.');
    }

    int sqrtNum = sqrt(number.abs()).toInt();
    if (sqrtNum * sqrtNum == number.abs()) {
    if (number >= 0) {
        print('A szám négyzetszám.');
    } else {
        print('A szám abszolút értéke négyzetszám, de negatív szám nem lehet valódi négyzetszám.');
    }
    } else {
        print('A szám nem négyzetszám.');
    }

    stdout.write('Add meg a teszt maximális pontszámát: ');
    double maxScore = double.parse(stdin.readLineSync()!);

    stdout.write('Add meg az elért pontszámot: ');
    double achievedScore = double.parse(stdin.readLineSync()!);

    if (maxScore <= 0) {
        print('A maximális pontszámnak nagyobbnak kell lennie 0-nál.');
        return;
    }

    double percentage = (achievedScore / maxScore) * 100;
    print('Elért százalék: ${percentage.toStringAsFixed(2)}%');

    String grade;
    if (percentage >= 90 && percentage < 100) {
        grade = 'A';
    } else if (percentage >= 80 && percentage < 90) {
        grade = 'B';
    } else if (percentage >= 70 && percentage < 80) {
        grade = 'C';
    } else if (percentage >= 60 && percentage < 70) {
        grade = 'D';
    } else if (percentage >= 50 && percentage < 60) {
        grade = 'E';
    } else if (percentage >= 0 && percentage < 50) {
        grade = 'F';
    } else if (percentage == 100) {
        grade = 'A';
    } else {
        grade = 'Érvénytelen százalék.';
    }

    print('Értékelés: $grade');
}