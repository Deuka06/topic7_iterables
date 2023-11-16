void main() {
 Iterable<List<T>> permutations<T>(List<T> elements, int length) sync* {
    if (length == 0) {
      yield [];
    } else {
      for (int i = 0; i < elements.length; i++) {
        final element = elements[i];
        final rest = List<T>.from(elements)..removeAt(i);
        final subPermutations = permutations(rest, length - 1);
        for (final subPermutation in subPermutations) {
          yield [element, ...subPermutation];
        }
      }
    }
  }
}