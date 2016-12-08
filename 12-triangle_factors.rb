#12-triangle_factors.rb
max = 3000
o = 0

def factors(n)
  a = [n, 1]
  i = n / 2
  loop do
    (a << i) if n % i == 0
    i -= 1
    break if i < 2
  end
  a
end


end_time = ""
start_time = Time.now

loop do
  n = (1..max).reduce(:+)
  if factors(n).length > 500
    (puts "!!!!!!!! #{n} !!!!!!!!"; o += 1) 
    end_time = Time.now
    break
  end
  max += 1
end

puts "It took #{start_time - end_time}"




