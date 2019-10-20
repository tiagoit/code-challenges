# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/library-fine
# 07 - Library Fine - 20191020

def library_fine(d1, m1, y1, d2, m2, y2)
  return 0 if y1 < y2 ||
              y1 == y2 && m1 < m2 ||
              y1 == y2 && m1 == m2 && d1 <= d2

  return 10_000 if y1 > y2

  return (m1 - m2) * 500 if m1 > m2

  (d1 - d2) * 15
end

def solve
  puts library_fine(9, 6, 2015, 6, 6, 2015) # 45
  puts library_fine(9, 6, 2016, 6, 6, 2015) # 10_000
  puts library_fine(9, 8, 2015, 6, 6, 2015) # 1_000
  puts library_fine(2, 8, 2014, 6, 6, 2015) # 0
end