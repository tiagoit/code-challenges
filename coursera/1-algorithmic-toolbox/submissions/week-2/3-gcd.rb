#!/usr/bin/env ruby

def gcd(a, b)
  dividend = [a, b].max
  divisor = [a, b].min
  loop do
    quotient = dividend / divisor
    reminder = dividend % divisor
    break if reminder.zero?
    dividend = divisor
    divisor = reminder
  end
  divisor
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts "#{gcd(a, b)}"
end