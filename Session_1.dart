import 'dart:io';

void main() {
  print("Enter board rollno: ");
  int number = int.parse(stdin.readLineSync()!);

	print("Enter fsc marks: ");
	int marks = int.parse(stdin.readLineSync()!);
	
  switch(number) {
    case 78422:
      print("you are qualify for FAST university");
      break;
    case 68720:
      print("You are qualify for KUST university");
      break;
    default:
      print("Your rollno is invalid please try again");
  }

		switch(marks){
		case 949:
			print("Congratulations 'AbdurRazzaq'");
				print("You got A+ or A1 Grade in fsc.");
			break;
				case 891:
				print("Congratulations 'Muhammad Usman'");
					print("You got A Grade in fsc.");
				break;

		default:
			print("invalid marks please try again");
	}
}
