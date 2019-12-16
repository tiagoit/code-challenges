# frozen_string_literal: true

def sort(n, arr)
  puts arr.to_s
  puts
  to_sort = arr[n - 1]
  (0...n).reverse_each do |i|
    # puts arr.to_s
    # puts 'arr[i]: ' + arr[i].to_s
    # puts 'arr[i-1]: ' + arr[i-1].to_s

    arr[i] = arr[i - 1]
    if i.zero? || arr[i - 1] <= to_sort
      arr[i] = to_sort
      puts arr.join(' ')
      break
    end
    puts arr.join(' ')
  end
end

def solve
  # sort(5, [1, 2, 4, 5, 3])
  # # 1 2 4 5 5
  # # 1 2 4 4 5
  # # 1 2 3 4 5

  # sort(5, [2, 3, 4, 5, 1])
  # # 2, 3, 4, 5, 5
  # # 2, 3, 4, 4, 5
  # # 2, 3, 3, 4, 5
  # # 2, 2, 3, 4, 5
  # # 1, 2, 3, 4, 5

  sort(5, [2, 4, 6, 8, 3])
  # 2 4 6 8 8
  # 2 4 6 6 8
  # 2 4 4 6 8
  # 2 3 4 6 8
end
