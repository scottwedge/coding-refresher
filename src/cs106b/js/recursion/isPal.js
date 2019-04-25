function isPal(s) {
  console.log(s)
  if(s.length <= 1){
    return true
  }
  if(s[0] === s[s.length-1]){
    return isPal(s.slice(1,s.length - 1))
  }
  else {
    return false;
  }
}

isPal('a');
isPal('aba');
isPal('abab')