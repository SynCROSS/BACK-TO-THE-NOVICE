'use strict';
alert('Hello, world!');

const FEE = 0.03;
const SELL_PRICE = 20000;
let cnt = 0;

const func = () => {
  // console.log(SELL_PRICE * FEE);
  // const result = prompt('YEE', 'defaultYEE');
  const result = confirm('YEE', 'defaultYEE');
  alert(`${cnt}`);
  alert(result);
};
