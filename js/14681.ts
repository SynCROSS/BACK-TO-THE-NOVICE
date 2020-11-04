// const fs = require('fs');
// const input = fs.readFileSync('/dev/stdin').toString().split('\n');
const input = '12\n-5'.split('\n');
const solution = (input: string[]): number => {
  if (parseInt(input[0], 10) > 0 && parseInt(input[1], 10) > 0) return 1;
  else if (parseInt(input[0], 10) > 0 && parseInt(input[1], 10) < 0) return 2;
  else if (parseInt(input[0], 10) < 0 && parseInt(input[1], 10) < 0) return 3;
  else if (parseInt(input[0], 10) < 0 && parseInt(input[1], 10) > 0) return 4;
};
console.log(solution(input));
