#!/usr/bin/env ruby
# frozen_string_literal: true

def max_pairwise_product_slow(a)
  # naive implementation
  # replace it
  result = 0
  n = a.size
  (0..n - 1).each do |i|
    (i + 1..n - 1).each do |j|
      result = a[i] * a[j] if a[i] * a[j] > result && a[i] != a[j]
    end
  end
  result
end

def max_pairwise_product(a)
  big1 = 0
  big2 = 0

  a.length.times do |i|
    if a[i] > big1
      big2 = big1
      big1 = a[i]
    elsif a[i] > big2 && a[i] != big1
      big2 = a[i]
    end
  end

  puts big1.to_s + '     ###     ' + big2.to_s
  big1 * big2
end

def max_pairwise_product_fast(a)
  index_big1 = 0
  a.length.times do |i|
    index_big1 = i if a[i] > a[index_big1]
  end

  index_big2 = index_big1
  if index_big1.eql?(0)
    index_big2 += 1 while a[index_big2].eql? a[index_big1]
  else
    index_big2 = 0
  end

  a.length.times do |i|
    index_big2 = i if a[i] != a[index_big1] && a[i] > a[index_big2]
  end

  # puts a[index_big1].to_s + '     ###     ' + a[index_big2].to_s
  a[index_big1] * a[index_big2]
end

def max_pairwise_product_by_sorting(a)
  a.sort!
  a[-1] * a[-2]
end

def dummy_max(a)
  max1 = 0
  max2 = 0

  a.length.times do |i|
    max1 = a[i] if a[i] > max1
  end

  a.length.times do |i|
    max2 = a[i] if a[i] > max2 && a[i] < max1
  end

  max1 * max2
end

def stress
  r1 = 0
  r2 = 0
  r3 = 0
  r4 = 0
  test_count = 0

  loop do
    n = 0
    while n < 2 do
      n = (rand * 100 + 1).to_i
    end
    a = []
    big1 = 0
    big2 = 0

    n.times do
      item = (rand * 10000 + 1).to_i
      a.push(item)
      if item > big1
        big2 = big1
        big1 = item
      elsif item > big2 && item != big1
        big2 = item
      end
    end

    puts "n: #{n}    array: #{a}"
    # puts "big1: #{big1}    big2: #{big2}"

    r1 = max_pairwise_product_fast(a)
    r2 = max_pairwise_product(a)
    r3 = big1 * big2
    r4 = dummy_max(a)

    test_count += 1
    break unless r1.eql? r2
    break unless r2.eql? r3
  end

  puts "[ERROR] r1: #{r1}   r2: #{r2}   r3: #{r3}   r4: #{r4}"
end

if __FILE__ == $0
  stress
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a = data[1..n]
  puts "#{max_pairwise_product_fast(a)}"
end
