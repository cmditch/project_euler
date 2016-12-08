#2-even_fibs
array = [1,2]
a = ""
s = Time.now
1000000.times do
  loop do
    break if array[-1] >= 4000000
    array << array[-1] + array[-2]
  end
  array.keep_if { |x| x % 2 == 0 }
  a = array.reduce(:+)
end
f = Time.now


n = 2
array = [1,2]
start = Time.now
1000000.times do
  loop do
    break if array[-1] >= 4000000
    array << number = array[-1] + array[-2]
    n += number if number % 2 == 0
  end
end
t = Time.now
puts a, n
puts "Array fill and reduce took #{ f - s }"
puts "Counter method took #{ t - start }"

