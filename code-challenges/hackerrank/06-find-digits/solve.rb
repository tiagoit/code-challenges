# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/find-digits
# 06 - Find Digits - 20191020

def find_digits n
  count = 0
  n.to_s.split('').each { |n_| count += 1 if n_ != '0' && (n % n_.to_i).zero? }
  count
end

def solve
  puts find_digits(123) # 2
  puts find_digits(12) # 2
  puts find_digits(1012) # 3
end