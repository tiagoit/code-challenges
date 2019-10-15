# frozen_string_literal: true

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/palindrome-index
# 22 - Palindrome Index - 2019-10-14

def palindrome_index s
  return -1 if palindrome? s

  s.length.times do |i|
    next if s[i] == s[s.length - 1 - i]

    return i if palindrome?(s[0, i] << s[i + 1, s.length - 1])
  end

  -1
end

def palindrome? s
  (s.length / 2).times do |i|
    return false unless s[i] == s[s.length - i - 1]
  end
  true
end

def solve
  puts palindrome_index 'aaab' # 3
  puts palindrome_index 'baa' # 0
  puts palindrome_index 'aaa' # -1
  puts palindrome_index 'aKbccba' # -1
  puts palindrome_index 'abccbKa' # -1
end