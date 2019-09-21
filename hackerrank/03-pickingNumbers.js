// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/picking-numbers
// 03 - Picking Numbers - 2019-09-19
function pick(a) {
  let maxAcc = 0;
  for (let i of a) {
    let lessOneAcc = 0;
    let plusOneAcc = 0;
    for (let j of a) {
      if (i - 1 === j || i === j) lessOneAcc++;
      if (i + 1 === j || i === j) plusOneAcc++;
    }
    if (Math.max(lessOneAcc, plusOneAcc) > maxAcc) {
      maxAcc = Math.max(lessOneAcc, plusOneAcc);
    }
  }
  return maxAcc;
}
// console.log(pick([1,1,2,2,4,4,5,5,5])); // 5
console.log(pick([4, 6, 5, 3, 3, 1, 1, 1, 1])); // 3
