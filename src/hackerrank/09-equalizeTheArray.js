// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/equality-in-a-array
// 09 - Equalize The Array - 20190925

function equalizeTheArray(arr) {
  let tempOcurrencesAcc = 1;
  let maxOccurrences = 1;
  arr.sort().forEach((el, idx) => {
    if (arr[idx + 1] && el === arr[idx + 1]) {
      tempOcurrencesAcc++;
      if (tempOcurrencesAcc > maxOccurrences)
        maxOccurrences = tempOcurrencesAcc;
    } else {
      tempOcurrencesAcc = 1;
    }
  });

  return arr.length - maxOccurrences;
}

console.log(equalizeTheArray([3, 3, 2, 1, 3])); // 2
