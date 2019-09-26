// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/electronics-shop
// 02 - Electronics Shop - 20190918

function electronicsShop(keyboards, drives, b) {
  let maxAmount = -1;
  for (let k of keyboards) {
    for (let d of drives) {
      if (k + d > maxAmount && k + d <= b) maxAmount = k + d;
    }
  }

  return maxAmount;
}

console.log(electronicsShop([3, 1], [5, 2, 8], 10)); // 9