#!/usr/bin/env ruby
# by Andronik Ordian

def lcm(a, b)
  return 0 if a.zero? || b.zero?
  a_, b_ = a, b
  while a_ != b_
    a_ += a if a_ < b_
    b_ += b if a_ > b_
  end
  a_
end

if __FILE__ == $0
  a, b = gets.split().map(&:to_i)
  puts "#{lcm(a, b)}"
end
