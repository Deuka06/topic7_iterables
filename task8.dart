void main(){
  for (int year = 2000; year <= 2150; year++) {
    DateTime date = DateTime(year, 12, 25);
    if (date.weekday == DateTime.sunday) {
      print('December 25, $year is a Sunday');
    }
  }
}