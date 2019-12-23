#!/usr/bin/env ruby

def depth_first_search(graph)
  res = [0]
  stack = graph[0].reverse
  while !stack.empty? do
    p "stack: #{stack}"
    node = stack.pop
    res.push node
    stack = stack.concat((graph[node].reverse - res.to_a)).uniq
    p "res: #{res}"
  end
  res.uniq
end

depth_first_search({
  0 => [1, 2],
  1 => [0, 2],
  2 => [0, 1, 3, 4, 5],
  3 => [2, 4], 
  4 => [3, 2],
  5 => [2]})
# expected: [0, 1, 2, 3, 4, 5]
#     got: [0, 1, 3, 4, 5, 2]

# p depth_first_search({
#   0 => [2], 
#   1 => [4], 
#   2 => [5, 0, 3], 
#   3 => [2], 
#   4 => [1, 5], 
#   5 => [4, 2]
# })
# => [0, 2, 5, 4, 1, 3]
