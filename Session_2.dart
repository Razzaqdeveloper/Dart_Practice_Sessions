import 'dart:io';

void main() {
  stdout.write("Welcome to the Simple Calculator!\n\n");
  
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("\n");

  stdout.write("Choose an operation (+, -, *, /): ");
  String operation = stdin.readLineSync()!;
  print("\n");
  double result;

  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      stdout.write("Invalid operation selected. Please try again.");
      return;
  }

  stdout.write("The result is: $result");
}
