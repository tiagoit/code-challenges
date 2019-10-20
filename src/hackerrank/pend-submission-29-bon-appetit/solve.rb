# https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/bon-appetit
# 2019-10-20

def bon_appetit(bill, k, b)
  total = bill.reduce(:+)
  ana = (total - bill[k]) / 2
  print b > ana ? b - ana : 'Bon Appetit'
end

def solve
  bon_appetit([3, 10, 2, 9], 1, 12) # 5
  bon_appetit([3, 10, 2, 9], 1, 7) # Bon Appetit
end
