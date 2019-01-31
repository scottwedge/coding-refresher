// return n to the power m
function exp(n,m){
  if(m < 0 || isNaN(m) || isNaN(n)){
    throw "m should be alway >=0 and m,n should always be numbers"
  }
  if(m === 0 ) {
    return 1;
  }
  return n * exp(n, m - 1)
}

exp(n,m)