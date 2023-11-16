void main() {
  String givenString = "aaabbccccddddd";
  StringBuffer compressedString = StringBuffer();
  int count = 1;

  for (int i = 0; i < givenString.length; i++) {
    if (i + 1 < givenString.length && givenString[i] == givenString[i + 1]) {
      count++;
    } else {
      compressedString.write('${givenString[i]}$count');
      count = 1;
    }
  }
  print('Compressed String: ${compressedString.toString()}');
}