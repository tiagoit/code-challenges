// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/drawing-book
// 01 - Drawing Book - 20190917

function drawingBook(n, p) {
  // Reduce the problem, if odd consider it same as even.
  if (n % 2 !== 0) n--;

  let beginningCountPages = 0;
  for (let i = 1; i <= p; i++) {
    if (i % 2 === 0) beginningCountPages++;
  }

  let endCountPages = 0;
  for (let i = n; i >= p; i--) {
    if (i % 2 !== 0) endCountPages++;
  }

  return Math.min(beginningCountPages, endCountPages);

  // let pg = Math.floor(p / 2);
  // let t = Math.floor(n / 2);
  // let turns = Math.min(pg, t-pg);
  // return turns;
}

console.log(drawingBook(6, 2)) // 1
console.log(drawingBook(5, 4)) // 0