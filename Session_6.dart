import 'dart:io';

void main() {

	
	List<Map<String, dynamic>> tasks = [];

	while (true) {
		print('*' * 40);
		String greenBackground =
			'\x1B[42m\x1B[1m*    Task Manager Menu       *\x1B[0m\x1B[0m';
		print(greenBackground);
		//print("Task Manager Menu:");
		
		print('*' * 40);
		print('\x1B[34m1. Add Task\x1B[0m');
		//print("1. Add Task");
		print('\x1B[34m2. View Tasks\x1B[0m');
		//print("2. View Tasks");
		print('\x1B[34m3. Remove Task\x1B[0m');
		//print("3. Remove Task");
		print('\x1B[34m4. Exit\x1B[0m');
		//print("4. Exit");
		print('\x1B[34mEnter your choice (1/2/3/4): \x1B[0m');
		//print("Enter your choice (1/2/3/4): ");

		String choice = stdin.readLineSync()!;

		switch (choice) {
			case '1':
				addTask(tasks);
				break;
			case '2':
				viewTasks(tasks);
				break;
			case '3':
				removeTask(tasks);
				break;
			case '4':
				print("Exiting Task Manager. Goodbye!");
				return;
			default:
				print('\x1B[31mInvalid choice. Please choose 1, 2, 3, or 4.\x1B[0m');
				//print("Invalid choice. Please choose 1, 2, 3, or 4.");
		}
	}
}

void addTask(List<Map<String, dynamic>> tasks) {
	print('\x1B[35mEnter task title: \x1B[0m');
	//print("Enter task title: ");
	String title = stdin.readLineSync()!;
	print('\x1B[35mEnter task description: \x1B[0m');
	//print("Enter task description: ");
	String description = stdin.readLineSync()!;
	print('\x1B[35mEnter task due date: \x1B[0m');
	//print("Enter task due date: ");
	String dueDate = stdin.readLineSync()!;

	tasks.add({"Title": title, "Description": description, "Due Date": dueDate});
	String greenText = '\x1B[32mTask added successfully!\x1B[0m';
	print(greenText);
	//String greenBackground = '\x1B[42mGreen background\x1B[0m';
	//print(greenBackground);
	//print("Task added successfully!");
}

void viewTasks(List<Map<String, dynamic>> tasks) {

	if (tasks.isEmpty) {
		print('\x1B[31mNo tasks to display.\x1B[0m');
		//print("No tasks to display.");
	} else {
		print('\x1B[36m\x1B[3m\nTask List:\x1B[0m\x1B[0m');
		//String blueText = '\x1B[34m\nTask List:\x1B[0m';
		//print(blueText);
		//print("\nTask List:");
		for (var task in tasks) {
			print('\x1B[36m\x1B[3mTitle: ${task["Title"]} \x1B[0m\x1B[0m');
			//String blueText = '\x1B[34mTitle: ${task["Title"]}\x1B[0m';
			//print(blueText);
			print('\x1B[36m\x1B[3mDescription: ${task["Description"]}\x1B[0m\x1B[0m');
			//String bluetext = '\x1B[34mDescription\x1B[0m';
			//print(bluetext);
			print('\x1B[36m\x1B[3mDue Date: ${task["Due Date"]}\x1B[0m\n\x1B[0m');
		//	String bluetexT = '\x1B[34mDue Date: ${task["Due Date"]}\n\x1B[0m';
			//print(bluetexT);
			//print("Title: ${task["Title"]}");
			//print("Description: ${task["Description"]}");
			//print("Due Date: ${task["Due Date"]}\n");
			
		}
	}
}

void removeTask(List<Map<String, dynamic>> tasks) {
	print("Enter task title to remove: ");
	String title = stdin.readLineSync()!;
	int indexToRemove = -1;

	for (int i = 0; i < tasks.length; i++) {
		if (tasks[i]["Title"] == title) {
			indexToRemove = i;
			break;
		}
	}

	if (indexToRemove != -1) {
		tasks.removeAt(indexToRemove);
		print('\x1B[31mTask removed successfully!\x1B[0m');
		//print("Task removed successfully!");
	} else {
		print("\x1B[31mTask with title '$title' not found. \x1B[0m");
		//print("Task with title '$title' not found.");
	}
}
