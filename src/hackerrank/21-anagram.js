'use strict';
// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/anagram
// 21 - Anagram - 2019-10-11

function solve(s) {
  // Simple solution
  if(s.length % 2 != 0) return -1;

  let st = s.substring(0, s.length/2);
  let nd = s.substring(s.length/2).split('');
  let matches = 0;

  for(let i=0; i < st.length; i++) {
    let matchIdx = nd.indexOf(st[i]);
    if(matchIdx >= 0) {
      // nd[matchIdx] = '#';
      delete(nd[matchIdx]);
      matches++;
    }
  }

  return s.length/2 - matches;

  // Complex solution
  // if(s.length % 2 != 0) return -1;
  // let first = s.substring(0, s.length/2).split('').sort();
  // let second = s.substring(s.length/2).split('').sort();
  // let countLettersFirst = {};
  // let countLettersSecond = {};
  // let letters = [];
  // let changes = 0;

  // for(let i=0; i<s.length/2; i++) {
  //   countLettersFirst[first[i]] ? countLettersFirst[first[i]]++ : countLettersFirst[first[i]] = 1;
  //   countLettersSecond[second[i]] ? countLettersSecond[second[i]]++ : countLettersSecond[second[i]] = 1;

  //   if(!letters.includes(first[i])) letters.push(first[i]);
  //   if(!letters.includes(second[i])) letters.push(second[i]);
  // }

  // letters.forEach(l => {
  //   if(countLettersFirst[l] && countLettersSecond[l]) {
  //     changes += Math.abs(countLettersFirst[l] - countLettersSecond[l]);
  //   } else if(countLettersFirst[l]) {
  //     changes += countLettersFirst[l];
  //   } else if(countLettersSecond[l]) {
  //     changes += countLettersSecond[l];
  //   }
  // });

  // return changes / 2;
}

// console.log(solve('aaabbb')); // 3
// console.log(solve('ab')); // 1
// console.log(solve('abc')); // -1
// console.log(solve('mnop')); // 2
// console.log(solve('xyyx')); // 0 
// console.log(solve('xaxbbbxx')); // 1
// console.log('');

// console.log(solve('asdfjoieufoa')); // 3
// console.log(solve('fdhlvosfpafhalll')); // 5
// console.log(solve('mvdalvkiopaufl')); // 5
// console.log('');

console.time('executionTime');

console.log(solve('hhpddlnnsjfoyxpciioigvjqzfbpllssuj')); // 10
console.log(solve('xulkowreuowzxgnhmiqekxhzistdocbnyozmnqthhpievvlj')); // 13
console.log(solve('dnqaurlplofnrtmh')); // 5
console.log(solve('aujteqimwfkjoqodgqaxbrkrwykpmuimqtgulojjwtukjiqrasqejbvfbixnchzsahpnyayutsgecwvcqngzoehrmeeqlgknnb')); // 26
console.log(solve('lbafwuoawkxydlfcbjjtxpzpchzrvbtievqbpedlqbktorypcjkzzkodrpvosqzxmpad')); // 15
console.log(solve('drngbjuuhmwqwxrinxccsqxkpwygwcdbtriwaesjsobrntzaqbe')); // -1
console.log(solve('ubulzt')); // 3
console.log(solve('vxxzsqjqsnibgydzlyynqcrayvwjurfsqfrivayopgrxewwruvemzy')); // 13
console.log(solve('xtnipeqhxvafqaggqoanvwkmthtfirwhmjrbphlmeluvoa')); // 13
console.log(solve('gqdvlchavotcykafyjzbbgmnlajiqlnwctrnvznspiwquxxsiwuldizqkkaawpyyisnftdzklwagv')); // -1

console.timeEnd('executionTime');

