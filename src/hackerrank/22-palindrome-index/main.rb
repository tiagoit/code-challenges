# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/palindrome-index
# 22 - Palindrome Index - 2019-10-14

def solve s
  return -1 if palindrome? s

  s.length.times do |i|
    next if s[i] == s[s.length - 1 - i]

    st = s[0, i]
    nd = s[i + 1, s.length - 1]
    return i if palindrome?(st << nd)
  end

  -1
end

def palindrome? s
  (s.length / 2).times do |i|
    return false unless s[i] == s[s.length - i - 1]
  end
  true
end

puts solve('aaab') # 3
puts solve('baa') # 0
puts solve('aaa') # -1
puts solve('aKbccba') # -1
puts solve('abccbKa') # -1