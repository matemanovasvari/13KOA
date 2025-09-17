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
}