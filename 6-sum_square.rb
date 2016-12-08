# 6 Sum Square

sum_squares = ((1..100).map {|x| x ** 2 }.reduce(:+))
square_sums = ((1..100).reduce(:+) ** 2)
(sum_squares - square_sums).abs