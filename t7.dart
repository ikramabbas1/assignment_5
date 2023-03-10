import 'dart:io';

void countVowelsAndConsonants(String str) {
  int vowels = 0;
  int consonants = 0;

  for (int i = 0; i < str.length; i++) {
    String char = str[i].toLowerCase();

    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      vowels++;
    } else if (char >= 'a' && char <= 'z') {
      consonants++;
    }
  }

  print("Vowels: $vowels");
  print("Consonants: $consonants");
}

void main() {
  stdout.write("Enter a string: ");
  String str = stdin.readLineSync()!;

  countVowelsAndConsonants(str);
}
