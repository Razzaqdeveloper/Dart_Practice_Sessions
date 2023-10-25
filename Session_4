import 'dart:io';

String x = 'r';
void main() {

	do{
	
	stdout.write("\n""_   Simple Calculator Using only Dart    ""\n""\n");

	stdout.write("Enter 1st number: ");
	double num1 = double.parse(stdin.readLineSync()!);

		stdout.write("[+][-][*][/][%] : ");
		String operator = stdin.readLineSync()!;

	stdout.write("Enter 2nd number: ");
		double num2 = double.parse(stdin.readLineSync()!);

	print("\n");

	double result;
	switch(operator){
		case '+':
			result = num1 + num2;
			stdout.write("The Addition is: $result""\n");
			break;
		case '-':
			result = num1 - num2;
			stdout.write("The Subtraction is: $result""\n");
			break;
		case '*':
			result = num1 * num2;
			stdout.write("The Multiplication is: $result""\n");
			break;
		case '/':
			result = num1 / num2;
			stdout.write("The Division is: $result""\n");
			break;
		case '%':
			result = num1 % num2;
			stdout.write("The Reminder is: $result""\n");
			break;

		default:
			print("invalid operator you selected");
			return;

	}
	
		stdout.write("\n""Enter r to retry: ");
		String x = stdin.readLineSync()!;
	}
	while(x =='r');

}
