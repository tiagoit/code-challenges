#!/usr/bin/env ruby

# simple solution - O(nk)
# (n-k) * (k)
def sliding_maximum_1(k, array)
  # array.each_cons(k).map(&:max) # repl.it solution
  slice_start_index = 0
  max = []
  while slice_start_index + k <= array.length
    slice = array[slice_start_index, k]
    max.push slice.max
    slice_start_index += 1
  end
  max
end

# better solution - O(n log k)
def sliding_maximum_2(k, array)

end

# optimal solution - O(n)
def sliding_maximum_3(k, array)
  max = []
  max_from_slice_index = (k - 1)
  while max_from_slice_index < array.length
    max.push array[max_from_slice_index]
    max_from_slice_index += 1
  end
  max
end

puts sliding_maximum_3(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]

#  0  1  2  3  4  5
# [1, 3, 5, 7, 9, 2]

# [1, 3, 5] # 1 max([]) 5
#    [3, 5, 7] # 2
#       [5, 7, 9] # 3
#          [7, 9, 2] # 4
