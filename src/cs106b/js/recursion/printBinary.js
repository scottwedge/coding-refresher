// let's save binary into a string
function printBinary(num){
  if(num < 0){
    return "-" + printBinary(-num);
  }
  if(num <= 1) {
    return `${num}`;
  }
  return printBinary(Math.floor(num / 2)) + `${num % 2}`;
}