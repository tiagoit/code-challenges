#!/usr/bin/env ruby

# Example solution
# def calc_fib(n)
#   return n if n <= 1
#   calc_fib(n - 1) + calc_fib(n - 2)
# end

def calc_fib(n)
  return 0 if n.zero?

  st = nd = 1
  (n - 2).times do
    st, nd = nd, (st + nd)
  end
  nd
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{calc_fib(n)}"
end

# 10 55
# 11 89
# 12 144
# 13 233
# 14 377
# 15 610