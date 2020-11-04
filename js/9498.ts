const solution = (num: number): string => {
  if (!num) {
    return null;
  }
  if (num > 100 && num < 0) {
    return null;
  }
  if (num >= 90) return 'A';
  else if (num >= 80) return 'B';
  else if (num >= 70) return 'C';
  else if (num >= 60) return 'D';
  else return 'F';
};
console.log(solution(89));
