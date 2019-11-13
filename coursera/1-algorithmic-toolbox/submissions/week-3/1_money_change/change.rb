#!/usr/bin/env ruby

def get_change(n)
  count = 0
  coins = [1, 5, 10]
  while n.positive?
    coins.reverse_each do |coin|
      (n -= coin) && break if n >= coin
    end
    count += 1
  end
  count
end

if __FILE__ == $0
  n = gets.to_i
  puts "#{get_change(n)}"   
end

# puts(get_change(2))   # 2
# puts(get_change(28))  # 6
