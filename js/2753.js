var solution = function (year) {
    if ((year % 4 === 0 && year % 100 !== 0) || year % 400 === 0)
        return 1;
    else
        return 0;
};
console.log(solution(1900));
