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
}