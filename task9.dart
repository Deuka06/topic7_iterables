void main(){
  var givenDig = [1, 2, 5, 6];
  var max = 0;
  var time = [];
  bool usedOrNot = true;
  for(int i = 0; i < givenDig.length; i++){
    if(givenDig[i] > max && givenDig[i] <= 2){
      max = givenDig[i];
    }
  }
  time.add(max);
  max = 0;
  for(int i = 0; i < givenDig.length; i++){
    if(time[0] == 2){
      if(givenDig[i] > max && givenDig[i] <= 4){
        for(int j = 0; j < time.length; j++){
          if(time[j] == givenDig[i]){
            usedOrNot = false;
          }
        }
        if(usedOrNot){
          max = givenDig[i];
        }
        usedOrNot = true;
      }
    }else{
      if(givenDig[i] > max && givenDig[i] <= 9){
        for(int j = 0; j < time.length; j++){
          if(time[j] == givenDig[i]){
            usedOrNot = false;
          }
        }
        if(usedOrNot){
          max = givenDig[i];
        }
        usedOrNot = true;
      }
    }
  }
  time.add(max);
  max = 0;
  for(int i = 0; i < givenDig.length; i++){
      if(givenDig[i] > max && givenDig[i] <= 5){
        for(int j = 0; j < time.length; j++){
          if(time[j] == givenDig[i]){
            usedOrNot = false;
          }
        }
        if(usedOrNot){
          max = givenDig[i];
        }
        usedOrNot = true;
      }
  }
  time.add(max);
  max = 0;
  for(int i = 0; i < givenDig.length; i++){
      if(givenDig[i] > max && givenDig[i] <= 9){
        for(int j = 0; j < time.length; j++){
          if(time[j] == givenDig[i]){
            usedOrNot = false;
          }
        }
        if(usedOrNot){
          max = givenDig[i];
        }
        usedOrNot = true;
      }
  }
  time.add(max);
  String fulltime = time[0].toString() + time[1].toString() +":"+ time[2].toString() + time[3].toString();
  print(fulltime);
}