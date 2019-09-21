// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/staircase
// 30 - Staircase - 20190921

function staircase(n) {
  for (let row = 0; row < n; row++) {
    let line = [];
    for (let col = 0; col < n; col++) {
      line.push((col >= n - row-1) ? "#" : " ");
    }
    console.log(line.join(""));
  }
}

staircase(4);
