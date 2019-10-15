// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/3d-surface-area
// 19 - 3D Surface Area - 20191009

function solve(A) {
  const ROWS = A.length;
  const COLS = A[0].length;
  const TOP_N_BOTTOM = ROWS * COLS * 2

  let sides = 0;

  for(let i=0; i<ROWS; i++) {
    for(let j=0; j<COLS; j++) {
      let current = A[i][j];

      let up = ((A[i-1] && A[i-1][j]) || 0)
      let down = ((A[i+1] && A[i+1][j]) || 0);
      let left = (A[i][j-1] || 0);
      let right = (A[i][j+1] || 0);

      if(current - up > 0) sides += current - up;
      if(current - down > 0) sides += current - down;
      if(current - left > 0) sides += current - left;
      if(current - right > 0) sides += current - right;
    }
  }

  return sides + TOP_N_BOTTOM;
}

console.log(solve([[1]])) // 6
console.log(solve([[1, 3, 4], [2, 2, 3], [1, 2, 4]])) // 60
console.log(solve([[51], [32], [28], [49], [28], [21], [98], [56], [99], [77]])) // 1482
console.log(solve([[91, 80, 7, 41, 36, 11, 48, 57, 40, 43]])) // 1276
