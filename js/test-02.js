// * 1.
// * let month = 1;
// * while (month <= 12) {
// *   console.log(`${month}월`);
// *   month++;
// * }
// * 2.
// * let month = 2
// * while (month<=12) {
// *   console.log(`${month}월`);
// *   month+=2
// * }
// * 3.
// * let num = 0;
// * const fibonacci = num => {
// *   if (!num) {
// *     return null;
// *   }
// *   let i = 0,
// *     tmp = 1,
// *     preTmp = 1;
// *   while (true) {
// *     i = tmp + preTmp;
// *     console.log(i);
// *     preTmp = tmp;
// *     tmp = i;
// *     if (i > num) {
// *       break;
// *     }
// *   }
// * };
// * fibonacci(1);
// * 4.
// * const findBreakEvenPoint = (constPrice, productionCost, price) => {
// *   let totalIncome = 0;
// *   let totalCost = 0;
// *   let num = 0;
// *   while (true) {
// *     totalCost = constPrice + productionCost * num;
// *     totalIncome = price * num;
// *     if (totalIncome > totalCost) {
// *       console.log(num);
// *       break;
// *     }
// *     num++;
// *   }
// * };
// * findBreakEvenPoint(1000, 70, 140);
// * ===
// * console.log(1000 / (140 - 70));
// * 5.
// * const sugarDelivery = (orderedKg: number): void => {
// *   const five = 5,
// *     three = 3;
// *   let cnt: number = 0;
// *   while (true) {
// *     if (orderedKg % five === 0) {
// *       cnt += orderedKg / five;
// *       console.log(cnt);
// *       break;
// *     } else if (orderedKg <= 0) {
// *       cnt = -1;
// *       console.log(cnt);
// *       break;
// *     }
// *     orderedKg -= three;
// *     cnt++;
// *   }
// * };
// * sugarDelivery(16);
// * KAKAOTALK problem 1
const solution = target => {
  let result = '';
  let candidateChar = '';
  let candidateCharCnt = 0;

  for (const char of target) {
    if (!candidateChar) {
      candidateChar = char;
      candidateCharCnt++;
    } else {
      if (candidateChar === char) {
        candidateCharCnt++;
      } else {
        candidateCharCnt === 1
          ? (result += `${candidateChar}`)
          : (result += `${candidateCharCnt}${candidateChar}`);
        candidateChar = char;
        candidateCharCnt = 1;
      }
    }
  }
  candidateCharCnt === 1
    ? (result += `${candidateChar}`)
    : (result += `${candidateCharCnt}${candidateChar}`);
  console.log(result);
};
solution('aabbcc');
