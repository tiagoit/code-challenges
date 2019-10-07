// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/cavity-map
// 16 - Cavity Map

function cavityMap(grid) {
  if(grid.length <= 2) return grid;

  let res = [grid[0]];

  for(let i=1; i<grid.length-1; i++) {
    let lineAsArray = [...grid[i]];
    for(let j=1; j<grid.length-1; j++) {
      let current = grid[i][j];
      let adjacents = [grid[i][j-1], grid[i][j+1], grid[i-1][j], grid[i+1][j]];

      if(current > Math.max(...adjacents)) lineAsArray[j] = "X";
    }
    res.push(lineAsArray.join(""));
  }
  res.push(grid[grid.length-1])
  return res;
}

console.log(cavityMap(["12", "12"])); 
// 12
// 12

console.log(cavityMap(["989", "191", "111"])); 
// 989
// 1X1
// 111

console.log(cavityMap(["1112", "1912", "1892", "1234"])); 
// 1112
// 1X12
// 18X2
// 1234
