# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/find-the-median
# 2019-10-20
def insertion_sort n, arr
  (n - 1).times do |i|
    j = i
    while arr[j + 1] < arr[j] && j >= 0
      arr[j], arr[j + 1] = arr[j + 1], arr[j]
      j -= 1
    end
  end
  arr
end

def find_median arr
  # arr = insertion_sort arr.length, arr
  arr.sort!
  arr[arr.length / 2]
end

def find_median_2 arr
  # arr = insertion_sort arr.length, arr
  arr.sort!
  arr[arr.length / 2]
end

def solve
  puts find_median([0, 1, 2, 4, 6, 5, 3]) # 3
  puts find_median([2, 1, 7, 9, 3, 8, 3, 7, 4]) # 7
end
