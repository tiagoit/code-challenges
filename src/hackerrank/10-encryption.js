// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/encryption
// 10 - Encryption - 20190926

function encryption(s) {
  // ###################################################### First Solution
  // s = s.replace(/ /g, "");

  // let numOfRows = Math.floor(Math.sqrt(s.length));
  // let numOfCols = Math.ceil(Math.sqrt(s.length));

  // if (numOfRows * numOfCols < s.length) numOfRows++;

  // let inputIndex = 0;

  // let matrix = [];
  // for (let i = 0; i < numOfRows; i++) {
  //   matrix[i] = [];
  //   for (let j = 0; j < numOfCols; j++) {
  //     matrix[i][j] = s[inputIndex];
  //     inputIndex++;
  //   }
  // }

  // let res = "";
  // for (let j = 0; j < numOfCols; j++) {
  //   for (let i = 0; i < numOfRows; i++) {
  //     res += matrix[i][j] || '';
  //   }
  //   res += " ";
  // }
  // return res;

  // ###################################################### Second Solution
  s = s.replace(/ /g, "");

  let numOfRows = Math.floor(Math.sqrt(s.length));
  let numOfCols = Math.ceil(Math.sqrt(s.length));

  // Square matrix always
  if (numOfRows < numOfCols /*|| numOfRows * numOfCols < s.length*/) {
    numOfRows++;
  }

  let encryptedString = "";
  for (let i = 0; i < numOfRows; i++) {
    for (let j = 0; j < numOfCols; j++) {
      let rowShift = j * numOfCols;
      let col = i;
      if (s[rowShift + col])
        encryptedString += s[rowShift + col];
    }
    encryptedString += " ";
  }
  return encryptedString;
}

console.log(encryption("if man was meant to stay on the ground god would have given us roots"));
// imtgdvs fearwer mayoogo anouuio ntnnlvt wttddes aohghn sseoau

console.log(encryption("haveaniceday"));
// hae and via ecy

console.log(encryption("feedthedog"));
// fto ehg ee dd

console.log(encryption("chillout"));
// clu hlt io