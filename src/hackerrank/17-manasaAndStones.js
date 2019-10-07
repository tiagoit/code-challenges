// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/manasa-and-stones
// 17 - Manasa and Stones

function solve(n, a, b) {
  let possibleLastRocks = [];
  for(let numOfAs=0; numOfAs<=(n-1); numOfAs++) {
    let possibleLastRockNum = a * numOfAs + b * ((n-1) - numOfAs);
    if(possibleLastRocks.indexOf(possibleLastRockNum) === -1) possibleLastRocks.push(possibleLastRockNum);
  }
  return possibleLastRocks.sort((a, b) => a-b);
}

console.log(solve(1, 1, 2)) // 1 2
console.log(solve(2, 1, 2)) // 1 2
console.log(solve(3, 1, 2)) // 2 3 4
console.log(solve(4, 10, 100)) // 30 120 210 300
console.log(solve(7, 9, 11)) // 54 56 58 60 62 64 66
console.log(solve(4, 8, 16)) // 24 32 40 48
console.log(solve(58, 69, 24))
// 1368 1413 1458 1503 1548 1593 1638 1683 1728 1773 1818 1863 1908 1953 1998 2043 2088 2133 2178 2223 2268 2313 2358 2403 2448 2493 2538 2583 2628 2673 2718 2763 2808 2853 2898 2943 2988 3033 3078 3123 3168 3213 3258 3303 3348 3393 3438 3483 3528 3573 3618 3663 3708 3753 3798 3843 3888 3933
console.log(solve(83, 86, 81))
// 6642 6647 6652 6657 6662 6667 6672 6677 6682 6687 6692 6697 6702 6707 6712 6717 6722 6727 6732 6737 6742 6747 6752 6757 6762 6767 6772 6777 6782 6787 6792 6797 6802 6807 6812 6817 6822 6827 6832 6837 6842 6847 6852 6857 6862 6867 6872 6877 6882 6887 6892 6897 6902 6907 6912 6917 6922 6927 6932 6937 6942 6947 6952 6957 6962 6967 6972 6977 6982 6987 6992 6997 7002 7007 7012 7017 7022 7027 7032 7037 7042 7047 7052
console.log(solve(73, 25, 25)) // 1800
console.log(solve(12, 73, 82)) // 803 812 821 830 839 848 857 866 875 884 893 902
console.log(solve(5, 3, 23)) // 12 32 52 72 92