import 'dart:io';

class User {
  String username;
  String email;
  String password;
  String phoneNumber;

  User(
      {required this.username,
      required this.email,
      required this.password,
      this.phoneNumber = ""});

  String toString() {
    return "Username: $username\nEmail: $email\nPassword: $password\nPhone Number: $phoneNumber\n";
  }
}

List<User> users = [];

void signUp() {
  stdout.write("Enter your username: ");
  String username = stdin.readLineSync()!;

  stdout.write("Enter your email: ");
  String email = stdin.readLineSync()!;

  stdout.write("Enter your password: ");
  String password = stdin.readLineSync()!;

  stdout.write("Enter your phone number (optional): ");
  String phoneNumber = stdin.readLineSync()!;

  User user = User(
      username: username,
      email: email,
      password: password,
      phoneNumber: phoneNumber);
  users.add(user);

  print("User created successfully!");
}

bool loginUser() {
  stdout.write("Enter your email: ");
  String email = stdin.readLineSync()!;

  stdout.write("Enter your password: ");
  String password = stdin.readLineSync()!;

  for (int i = 0; i < users.length; i++) {
    if (users[i].email == email && users[i].password == password) {
      print("Login successful!");
      print(users[i]);
      return true;
    }
  }

  print("Incorrect email or password. Please try again.");
  return false;
}

void main() {
  for (int i = 0; i < 3; i++) {
    signUp();
  }

  loginUser();
  loginUser();
}
