void main() {
  double start = 2.5;
  double step = 1.5;

  var myIterator = infiniteRange(start, step).iterator;

  while (true) {
    if (myIterator.moveNext()) {
      print(myIterator.current);
    }
  }
}

Iterable<double> infiniteRange(double start, double step) sync* {
  double value = start;
  while (true) {
    yield value;
    value += step;
  }
}