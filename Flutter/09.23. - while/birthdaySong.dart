import 'dart:io';

void main(){
    print("Type in a number between 1 and 100!: ");
    int number = int.parse(stdin.readLineSync()!);

    int i = 0;
    while(i < number){
        print("Happy birthday!");
        print("Happy birthday to you!");
        i++;
    }
}