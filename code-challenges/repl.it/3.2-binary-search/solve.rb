#!/usr/bin/env ruby

def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)
  middle = (min_interval + max_interval) / 2
  return middle if (middle**2).eql? number
  middle**2 > number ? 
    sqrt_recursive(number, min_interval, middle - 1) :
    sqrt_recursive(number, middle + 1, max_interval)
end

puts sqrt(25)
puts sqrt(7056)
