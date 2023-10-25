import 'dart:io';
void main() {
	int total = 100;
	
stdout.write("Enter your Computer Science marks: ");
	int computer = int.parse(stdin.readLineSync()!); 
	if(computer > 90){
		print("you got A+ grade");
	}
	else if(computer > 80 && computer < 90){
		print ("you got B grade");
	}
	else if(computer > 50 && computer < 80){
		print ("you got C grade");
	}
	else{
		print ("you are failed");
	}
}
