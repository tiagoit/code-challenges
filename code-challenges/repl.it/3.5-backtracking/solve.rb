#!/usr/bin/env ruby
# https://repl.it/student/submissions/9359531?lite=true

def exact_sum?(k, coins)
  # puts coins.to_s + ' ' + coins.sum.to_s + ' ' + k.to_s
  return true if coins.sum.eql?(k)
  (coins.length - 1).times do |i|
    sub_array = coins[0...i] + coins[(i+1)...coins.length]
    # puts sub_array.to_s
    if(sub_array.sum >= k)
      return true if exact_sum?(k, sub_array)
    end
  end
  false
end

# puts exact_sum?(12, [1, 2, 3, 4, 5])
# => true

# puts exact_sum?(11, [1, 5, 9, 13])
# => false

puts exact_sum?(50, [1, 3, 5, 37, 18, 5])
# => true

# boolean findSolutions(n, other params) :
#     if (found a solution) :
#         displaySolution();
#         return true;

#     for (val = first to last) :
#         if (isValid(val, n)) :
#             applyValue(val, n);
#             if (findSolutions(n+1, other params))
#                 return true;
#             removeValue(val, n);
#         return false;
