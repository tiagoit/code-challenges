# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/divisible-sum-pairs
# HackerRank - 25 - Divisible Sum Pairs - 20191017

def divisible_sum_pairs n, k, ar
  pairs = 0
  n.times do |i|
    ((i + 1)...n).each do |j|
      pairs += 1 if ((ar[i] + ar[j]) % k).zero?
    end
  end
  pairs
end

def solve
  puts(divisible_sum_pairs(6, 3, [1, 3, 2, 6, 1, 2]))
end