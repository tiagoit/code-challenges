# frozen_string_literal: true

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/palindrome-index
# 22 - Palindrome Index - 2019-10-14

# def palindrome_index s
#   return -1 if palindrome? s

#   s.length.times do |i|
#     # the (first+i) one is equal to the (last-i) one
#     next if s[i] == s[s.length - 1 - i]

#     return i if palindrome?(s[0, i] << s[i + 1, s.length - 1])
#   end

#   -1
# end

# def palindrome? s
#   (s.length / 2).times do |i|
#     return false unless s[i] == s[s.length - i - 1]
#   end
#   true
# end

def palindrome_index_faster s
  return -1 if palindrome? s
  
  len = s.length
  (len / 2).times do |i|
    next if s[i].eql? s[len - 1 - i]

    # remove from left
    return i if palindrome?(s[0, i] + s[i + 1, len - 1])

    # remove from right
    return palindrome?(s[0, len - 1 - i] + s[len - i, len - 1]) ? (len - i - 1) : -1
  end

  -1
end

# O(?)
def palindrome? s
  left = s[0, s.length / 2] # O(1)
  right = s[s.length / 2 + (s.length.even? ? 0 : 1), s.length / 2].reverse # O(1)
  left.eql? right # O(?)
end

def solve
  puts palindrome_index_faster 'abckcba' # -1
  puts palindrome_index_faster 'aaab' # 3
  puts palindrome_index_faster 'baa' # 0
  puts palindrome_index_faster 'aaa' # -1
end
