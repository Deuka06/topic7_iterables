void main(){
  var list = [5, 3, 7, 0, -2, 4, -5];
  print(list.takeWhile((value) => value > 0));
}