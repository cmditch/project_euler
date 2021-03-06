# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

Prime.first(150_000).map{|n| n if n < 2_000_000 }.compact.reduce(:+)