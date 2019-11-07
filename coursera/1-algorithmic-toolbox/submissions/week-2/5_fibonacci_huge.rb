#!/usr/bin/env ruby
def calc_fib(n)
  return 0 if n.zero?

  st = nd = 1
  (n - 2).times do
    st, nd = nd, (st + nd)
  end
  nd
end

def fib_huge(n, m)
  period_len = 2
  period_len += 1 while calc_fib(period_len) % m != 0 || calc_fib(period_len + 1) % m != 1

  i = n % period_len
  calc_fib(i) % m
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts "#{fib_huge(a, b)}"
end

# 9999999999999 5 - 1
# 239 1000 - 161
# 2816213588 239 - 151