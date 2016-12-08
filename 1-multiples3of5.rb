array = []
(1..999).each do |n|
  array << n if n % 3 == 0 || n % 5 == 0
end
p array.count
p array.reduce(:+)
