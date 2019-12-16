#!/usr/bin/env ruby

def sliding_maximum(k, array)
  # SECOND SOLUTION
  (k-1).times do
    tmp = []
    (array.length-1).times do |i|
      tmp.push([array[i], array[i+1]].max) 
    end
    array = tmp.clone
  end
  array

  # # FIRST SOLUTION
  # slice_start_index = 0
  # max = []
  # while slice_start_index + k <= array.length
  #   slice = array[slice_start_index, k]
  #   max.push slice.max
  #   slice_start_index += 1
  # end
  # max
  
  # # MODEL SOLUTION
  # array.each_cons(k).map(&:max)
end
print sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
