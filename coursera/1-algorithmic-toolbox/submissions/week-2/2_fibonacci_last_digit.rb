#!/usr/bin/env ruby

def fib_last_digit(n)
  return 0 if n.zero?

  st = nd = 1
  (n - 2).times do
    st, nd = nd, (st + nd) % 10
  end
  nd
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{fib_last_digit(n)}"
end