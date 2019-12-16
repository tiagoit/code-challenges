// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/halloween-sale
// 20 - Hallowen Sale - 20191010

function solve(p, d, m, s) {
  let games = 0;
  while(s >= p) {
    games++;
    s -= p;
    p-d > m? p -= d : p = m;
  }
  return games;
}

console.log(solve(20, 3, 6, 80)); // 6
console.log(solve(20, 3, 6, 85)); // 7