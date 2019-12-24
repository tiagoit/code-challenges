#!/usr/bin/env ruby

require 'set'

def find_pairs(array, k)
  res = Set.new()
  array.each do |item|
    array.each do |inner_item|
      res.add(Set[item, inner_item]) if (item + inner_item).eql? k
    end
  end
  res.to_a.map(&:to_a)
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]