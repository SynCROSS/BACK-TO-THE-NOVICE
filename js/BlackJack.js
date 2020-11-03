const CONDITIONtoWIN = 21;
let totalNum = 0;
let num;
for (let i = 0; num <= CONDITIONtoWIN; i++) {
  num = prompt('number');
  totalNum += num;
  if (totalNum === CONDITIONtoWIN) {
    alert('You Won!');
    break;
  } else if (totalNum >= CONDITIONtoWIN) {
    alert('You Lost!');
  } else if (totalNum <= CONDITIONtoWIN) {
    continue;
  } else {
    alert('You must type number.');
  }
}
