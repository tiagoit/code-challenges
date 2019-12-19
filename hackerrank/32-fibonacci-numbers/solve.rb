#!/usr/bin/env ruby
# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/functional-programming-warmups-in-recursion---fibonacci-numbers

# 1st = 1
# 2nd = 1
# 3rd = 1st + 2nd = 2
# 4th = 3

# rescursive
def fib_rec(n)
    return n if n <= 3

    return fib_rec(n-1) + fib_rec(n-2)
end
# (1..10).each { |n| puts fib_rec(n) }

# iterative
def fib(n)
    return n if n <= 3

    fib_x = 1 # st
    fib_y = 2 # nd
    (n-3).times do
        fib_x, fib_y = fib_y, (fib_x + fib_y)
    end
    return fib_x + fib_y
end
# (1..10).each { |n| puts "#{n} -> #{fib(n)}" }

# get the sum of even fibonacci numbers
def even_sum(n)
    even_sum = 2
    fib_x = 1 # st
    fib_y = 2 # nd
    loop do
        fib_x, fib_y = fib_y, (fib_x + fib_y)
        break if (fib_x + fib_y) > n
        even_sum += (fib_x + fib_y) if (fib_x + fib_y).even?
    end

    return even_sum
end
puts even_sum(10)
