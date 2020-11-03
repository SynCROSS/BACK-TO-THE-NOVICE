// for (let i = 1; i <= 5; i++) {
//   let line = '';
//   for (let j = 1; j <= i; j++) {
//     line += '*';
//   }
//   console.log(line);
// }
const nums = [1, 2, 3, 4];
const runningSum = nums => {
  let preSum = 0;
  for (const num in nums) {
    // if (num) {
    nums[num] += preSum;
    preSum = nums[num];
    // }
  }
  return nums;
};

console.log(runningSum(nums));
