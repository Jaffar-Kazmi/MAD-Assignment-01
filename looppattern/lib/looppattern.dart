import 'dart:io';

void main() {
  // Taking input from user
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  // Outer loop for rows
  for (int i = 1; i <= n; i++) {
    // Inner loop for numbers in each row
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    // Move to next line after each row
    print("");
  }
}
