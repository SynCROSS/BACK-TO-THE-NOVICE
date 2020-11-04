// const fs = require('fs');
// const input = fs.readFileSync('/dev/stdin').toString().split('\n');
var input = '12\n-5'.split('\n');
var solution = function (input) {
    if (parseInt(input[0], 10) > 0 && parseInt(input[1], 10) > 0)
        return 1;
    else if (parseInt(input[0], 10) > 0 && parseInt(input[1], 10) < 0)
        return 2;
    else if (parseInt(input[0], 10) < 0 && parseInt(input[1], 10) < 0)
        return 3;
    else if (parseInt(input[0], 10) < 0 && parseInt(input[1], 10) > 0)
        return 4;
};
console.log(solution(input));
