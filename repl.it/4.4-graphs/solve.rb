def graph(hash_graph)
    # write your code here
    current = 0
    res = [0]
    while current != 4 do
      current = hash_graph[current][0]
      res.push current
    end
    res
  end
  
  hash = { 
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  }
  
  p graph(hash)
  # => [0, 2, 5, 4]
  