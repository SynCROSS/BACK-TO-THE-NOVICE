// const fs = require('fs');
// const input = fs.readFileSync('/dev/stdin').toString().split(' ');
const input = ['1', '2'];
if (parseInt(input[0], 10) > parseInt(input[1], 10)) {
  console.log('>');
} else if (parseInt(input[0], 10) < parseInt(input[1], 10)) {
  console.log('<');
} else if (parseInt(input[0], 10) === parseInt(input[1], 10)) {
  console.log('==');
}
