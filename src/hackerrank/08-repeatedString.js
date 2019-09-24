// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/repeated-string
// 08 - Repeated String - 20190924

function repeatedString(s, n) {
  // let str = "";
  // while (str.length < n) {
  //   str += s;
  // }
  // let countAs = 0;
  // for (let i = 0; i < n; i++) {
  //   if (str[i] === "a") countAs++;
  // }

  // return countAs;

  let lengthOfString = s.length;
  let countAsInString = s.match(/a/g) ? s.match(/a/g).length : 0;
  let integerCount = Math.trunc(n / lengthOfString) * countAsInString;
  let remainderCount = 0;
  if (n % lengthOfString) {
    let substringArray = s.substring(0, n % lengthOfString).match(/a/g);
    remainderCount = substringArray ? substringArray.length : 0;
  }

  return integerCount + remainderCount;
}

console.log(repeatedString("bcd", 10)); // 7
console.log(repeatedString("a", 10000)); // 10000
