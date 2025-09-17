import 'dart:io';

void main() {
  // Step 1: Take user input for name and age
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync() ?? "";

  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    print("Sorry $name, you are not eligible to register.");
    return; // Stop execution
  }

  // Step 2: Ask how many numbers the user wants to enter
  stdout.write("How many numbers do you want to enter? ");
  int n = int.parse(stdin.readLineSync()!);

  List<int> numbers = [];

  // Step 3: Take numbers as input
  for (int i = 0; i < n; i++) {
    stdout.write("Enter number ${i + 1}: ");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  // Step 4: Process the list
  int sumEven = 0;
  int sumOdd = 0;

  for (int num in numbers) {
    if (num % 2 == 0) {
      sumEven += num;
    } else {
      sumOdd += num;
    }
  }

  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);

  // Step 5: Print the results
  print("\nResults:");
  print("Numbers entered: $numbers");
  print("Sum of even numbers: $sumEven");
  print("Sum of odd numbers: $sumOdd");
  print("Largest number: $largest");
  print("Smallest number: $smallest");
}
