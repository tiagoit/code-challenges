# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/insertionsort2
# 27 - Insertion Sort 2 - 20191020

def insertion_sort n, arr
  # puts arr.join(' ')
  # puts
  (n - 1).times do |i|
    j = i
    while arr[j + 1] < arr[j] && j >= 0
      arr[j], arr[j + 1] = arr[j + 1], arr[j]
      j -= 1
    end
    puts arr.join(' ')
  end
end

def solve
  # insertion_sort(6, [1, 4, 3, 5, 6, 2])
  # # 1 4 3 5 6 2
  # # 1 3 4 5 6 2
  # # 1 3 4 5 6 2
  # # 1 3 4 5 6 2
  # # 1 2 3 4 5 6

  insertion_sort(8, [8, 7, 6, 5, 4, 3, 2, 1])
  # 7 8 6 5 4 3 2 1
  # 6 7 8 5 4 3 2 1
  # 5 6 7 8 4 3 2 1
  # 4 5 6 7 8 3 2 1
  # 3 4 5 6 7 8 2 1
  # 2 3 4 5 6 7 8 1
  # 1 2 3 4 5 6 7 8
end
