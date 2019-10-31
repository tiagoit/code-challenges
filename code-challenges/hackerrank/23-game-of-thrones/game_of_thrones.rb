# frozen_string_literal: true

# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/game-of-thrones
# 23 - Game of Thrones - 2019-10-15
# Complexity: O(n) + O(n) + O(1) + O(1) = O(n)

def game_of_thrones s
  letters = {}
  # count the letters occurence
  s.length.times do |i| # O(n)
    letters[s[i]] = letters[s[i]].nil? ? 1 : letters[s[i]] += 1
  end

  # count odds
  odds = 0
  letters.each do |_, count| # O(n) | Worst case: no duplicated letters
    odds += 1 if count.odd?
  end

  return 'NO' if s.length.odd? && odds > 1 ||
                 s.length.even? && odds.positive?

  'YES'
end

def solve
  puts game_of_thrones 'aaabbbb' # YES
  puts game_of_thrones 'cdefghmnopqrstuvw' # NO
  puts game_of_thrones 'cdcdcdcdeeeef' # YES
end
