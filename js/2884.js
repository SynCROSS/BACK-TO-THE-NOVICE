// const fs = require('fs');
// const input = fs.readFileSync('/dev/stdin').toString().split('');
var timeToSub = 45;
var solution = function (H, M) {
    if (H < 0 && H >= 24 && M < 0 && M >= 60) {
        return null;
    }
    if (M - timeToSub >= 0) {
        return [H, M - timeToSub];
    }
    if (H - 1 >= 0) {
        return [H - 1, 15 + M]; // 60 - (timeToSub - M)
    }
    return [23, 15 + M];
};
console.log(solution(10, 10));
