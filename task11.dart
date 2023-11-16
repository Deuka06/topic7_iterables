int maxSameCharSubstring(String inputString) {
  if (inputString.isEmpty) {
    return 0; 
  }

  int maxLength = 1; 

  for (int i = 0; i < inputString.length; i++) {
    int length = 1;
    while (i + 1 < inputString.length && inputString[i] == inputString[i + 1]) {
      length++;
      i++;
    }
    if (length > maxLength) {
      maxLength = length; 
    }
  }

  return maxLength;
}

void main() {
  String givenString = "aabbbccccdd";
  int maxLength = maxSameCharSubstring(givenString);
  print(maxLength);
}