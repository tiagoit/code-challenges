// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/happy-ladybugs
// 18 - Happy Ladybugs

function solve(b) {
  let elements = {}
  let alreadyHappy = true;
  let board = b.split('');

  for(let i=0; i<board.length; i++) {
    elements[board[i]] ? elements[board[i]]++ : elements[board[i]] = 1;
    if((board[i-1] && board[i-1] != board[i]) &&
      (board[i+1] && board[i+1] != board[i])) alreadyHappy = false;
  }

  let underscorePresent = !!elements['_'];

  let alone = false;
  Object.keys(elements).forEach(key => {
    if(key != '_' && elements[key] === 1) alone = true;
  });

  // There is only empty spaces
  if(underscorePresent && Object.keys(elements).length == 1) return 'YES';

  // There is no empty spaces (TODO: check if everyone is already happy)
  if(!underscorePresent && !alreadyHappy) return 'NO';

  // There is an alone color
  if(alone) return 'NO';

  return 'YES';
}

console.log(solve('RBY_YBR')); // YES
console.log(solve('X_Y__X')); // NO
console.log(solve('__')); // YES
console.log(solve('B_RRBR')); // YES
console.log('\n')

console.log(solve('AABBC')); // NO
console.log(solve('AABBC_C')); // YES
console.log(solve('_')); // YES
console.log(solve('DD__FQ_QQF')); // YES
console.log(solve('AABCBC')); // NO
console.log('\n')

console.log(solve('_')); // YES
console.log(solve('RBRB')); // NO
console.log(solve('RRRR')); // YES
console.log(solve('BBB')); // YES
console.log(solve('BBB_')); // YES
