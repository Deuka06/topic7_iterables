List<int> shortestDistance(String inputString, String targetChar) {
  List<int> result = List.filled(inputString.length, inputString.length);
  int position = -inputString.length;
  for (int i = 0; i < inputString.length; i++) {
    if (inputString[i] == targetChar) {
      position = i;
    }
    result[i] = i - position;
  }
  position = inputString.length * 2;
  for (int i = inputString.length - 1; i >= 0; i--) {
    if (inputString[i] == targetChar) {
      position = i;
    }
    result[i] = result[i].abs().compareTo(position - i).clamp(0, 1) == -1 ? result[i] : position - i;
  }
  return result;
}

void main() {
  String givenString = "example string";
  String specifiedCharacter = 'e';
  List<int> distances = shortestDistance(givenString, specifiedCharacter);
  print('Shortest distances from "$specifiedCharacter" in "$givenString": $distances');
}