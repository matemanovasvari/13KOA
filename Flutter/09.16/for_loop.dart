import 'dart:io';

void main() {
  print("Enter two numbers:");
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  int lower = num1 < num2 ? num1 : num2;
  int upper = num1 > num2 ? num1 : num2;

  for (int i = lower; i <= upper; i++) {
    String parity = (i % 2 == 0) ? "even" : "odd";
    print("$i is $parity");
  }

  List<String> uefa2024euro = [
    "Spain",
    "Germany",
    "Portugal",
    "France",
    "Netherlands",
    "Turkey",
    "England",
    "Switzerland"
  ];

  uefa2024euro.asMap().forEach((index, value) => print("$index --- $value"));

  Set<String> matches = {};
  for (int i = 0; i < uefa2024euro.length; i++) {
    for (int j = i + 1; j < uefa2024euro.length; j++) {
      matches.add("${uefa2024euro[i]} - ${uefa2024euro[j]}");
    }
  }
  matches.forEach(print);

  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);
  List<int> digits = number.toString().split('').map((e) => int.parse(e)).toList();
  double average = digits.reduce((a, b) => a + b) / digits.length;
  print("Average of digits: ${average.toStringAsFixed(2)}");

  print("Enter a number:");
  number = int.parse(stdin.readLineSync()!);
  digits = number.toString().split('').map((e) => int.parse(e)).toList();
  digits.forEach((digit) => print("Square of $digit is ${digit * digit}"));

  print("Enter a string:");
  String input = stdin.readLineSync()!;
  String result = input.replaceAll(RegExp(r'[aeiouAEIOU]'), '');
  print("String without vowels: $result");

  print("Enter a string:");
  input = stdin.readLineSync()!;
  for (int i = 0; i < input.length; i++) {
    print("(${input[i]}, ${input.codeUnitAt(i)})");
  }

  print("Enter a number for FizzBuzz:");
  int limit = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= limit; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else {
      print(i);
    }
  }

  for (int i = 1; i <= 6; i++) {
    innerLoop9:
    for (int j = 1; j <= 6; j++) {
      if (i * j == 9) {
        print("Exited ${i * j}");
        break innerLoop9;
      }
    }
  }

  outerLoop9:
  for (int i = 1; i <= 6; i++) {
    for (int j = 1; j <= 6; j++) {
      if (i * j == 9) {
        print("Exited ${i * j}");
        break outerLoop9;
      }
    }
  }
}