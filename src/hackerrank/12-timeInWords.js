// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/the-time-in-words
// 12 - Time In Words - 20190930

function timeInWords(h, m) {
  // First solution
  // let num = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'quarter', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty'];

  // let minutes;
  // let minPluralized;

  // // o' clock || 15 || 30 || 45
  // if (m == 0) return `${num[h]} o' clock`;
  // if (m == 15) return `quarter past ${num[h]}`;
  // if (m == 30) return `half past ${num[h]}`;
  // if (m == 45) return `quarter to ${num[h + 1]}`;

  // // past X 
  // if (m <= 30) {
  //   if (m <= 20) {
  //     minutes = num[m];
  //   } else {
  //     minutes = num[20] + ' ' + num[m - 20];
  //   }
  //   minPluralized = (m > 1) ? 'minutes' : 'minute'

  //   return `${minutes} ${minPluralized} past ${num[h]}`;
  // }

  // // to X+1
  // m = m < 30 ? m : 60 - m;
  // if (m <= 20) {
  //   minutes = num[m];
  // } else {
  //   minutes = num[20] + ' ' + num[m - 20];
  // }
  // minPluralized = (m > 1) ? 'minutes' : 'minute'
  // return `${minutes} ${minPluralized} to ${num[h + 1]}`;

  // Second solution
  let num = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'quarter', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty'];

  let minutes;
  let minPluralized;

  // o' clock || 15 || 30 || 45
  if (m == 0) return `${num[h]} o' clock`;
  if (m == 30) return `half past ${num[h]}`;


  let pastOrTo = m <= 30 ? 'past' : 'to';
  let hours = m <= 30 ? num[h] : num[h + 1];


  m = Math.min(m, 60 - m);
  if (m <= 20) {
    minutes = num[m];
  } else {
    minutes = num[20] + ' ' + num[m - 20];
  }
  minPluralized = (m > 1) ? 'minutes' : 'minute'

  return `${minutes} ${minPluralized} ${pastOrTo} ${hours}`;
}

console.log(timeInWords(5, 00)); // three o' clock
console.log(timeInWords(5, 15)); // quarter past five
console.log(timeInWords(5, 30)); // half past five
console.log(timeInWords(5, 45)); // quarter to six
console.log('\n');
console.log(timeInWords(5, 01)); // one minute past five
console.log(timeInWords(5, 29)); // twenty nine minutes past five
console.log('\n');
console.log(timeInWords(5, 31)); // twenty nine minutes to six
console.log(timeInWords(5, 40)); // twenty minutes to six
console.log(timeInWords(5, 47)); // thirteen minutes to six
console.log(timeInWords(5, 59)); // one minute to six