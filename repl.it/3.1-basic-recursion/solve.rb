#!/usr/bin/env ruby

def sum(number)
  return number if number.eql? 1
  number + sum(number - 1);
end

puts sum(4)
puts sum(10)