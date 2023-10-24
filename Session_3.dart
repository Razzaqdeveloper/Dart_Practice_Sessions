import 'dart:io';

void main() {
	print("\n");
  stdout.write("_   Simple Calculator Using only Dart    _");
	print("\n");
	print("\n");

	stdout.write("Enter 1st number: ");
	double num1 = double.parse(stdin.readLineSync()!);

	stdout.write("Enter 2nd number: ");
		double num2 = double.parse(stdin.readLineSync()!);

	print("\n");

	stdout.write("Select your operators (+, -, *, /, %): ");
	String operator = stdin.readLineSync()!;

	print("\n");

	double result;
	switch(operator){
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
		case '%':
			result = num1 % num2;
			break;

		default:
			print("invalid operator you selected");
			return;
			
	}
	print("The result is: $result");
}
