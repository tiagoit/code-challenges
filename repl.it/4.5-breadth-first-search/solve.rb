#!/usr/bin/env ruby

require 'set'

def bfs(graph)
  res = Set[0]
  queue = [0]
  while !queue.empty? do
    node = queue.shift
    queue.concat(graph[node] - res.to_a) # linked but not visited
    res.merge graph[node]
  end
  res.to_a
end

p bfs({
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
})
# => [0, 2, 5, 3, 4, 1]
