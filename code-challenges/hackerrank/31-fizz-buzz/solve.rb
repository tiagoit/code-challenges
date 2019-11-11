#!/usr/bin/env ruby
# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/fizzbuzz

# Enter your code here. Read input from STDIN. Print output to STDOUT
(1..100).map{|k| puts (k%15==0 && 'FizzBuzz')||(k%3==0 && 'Fizz')||(k%5==0 && 'Buzz')||k}

# a=*(1..100)
# a.each do |i|
#   *i += 100
#   # print i.to_s + ' '
#   # if i%15==0
#   #   puts "FizzBuzz"
#   # elsif i%5==0
#   #     puts "Buzz"
#   # elsif i%3==0
#   #     puts "Fizz"
#   # else
#   #     puts i
#   # end
# end
# puts a