function printStar(n){
  if(n <= 0 || isNaN(n)){
    throw "n should be number and cannot be lessthan or equal to 0"
  }
  if(n === 1){
    return "*";
  }
  else {
    return "*" + printStar(n-1);
  }
}

printStar(10)