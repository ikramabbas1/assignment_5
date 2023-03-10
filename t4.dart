void main() {
  String text = 'Pakistan Zindabad';
  String reversedText = reverseString(text);
  print('Original text: $text');
  print('Reversed text: $reversedText');
}

String reverseString(String text) {
  String reversedText = '';
  for (int i = text.length - 1; i >= 0; i--) {
    reversedText += text[i];
  }
  return reversedText;
}
