# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
 

1000.times do |x|
  1000.times do |y|
    1000.times do |z|
      if x + z + y == 1000 && x ** 2 + y ** 2 == z ** 2
        puts x * y * z
      end
    end
  end
end





