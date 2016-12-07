# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

def is_odd(n)
  (3 * n) + 1
end

def is_even(n)
  n/2
end

odd = Proc.new {|x| (3 * x) + 1 }
even = Proc.new {|x| x / 2 }


def time(thing) 
 start = Time.now
 thing
 puts Time.now - start
end

def collatz(num)
  list = [num]
  while num != 1
    if num % 2 == 0
      list << num = is_even(num)
    else
      list << num = is_odd(num)
    end
  end
  list
end


# def collatz_longest_even(num)
#   n = 1
#   list = Hash.new
#   longest = 1
#   while n <= num
#     list[n.to_s] = collatz(n).length
#     n += 1
#   end
#   list
# end

# evens = []
# odds = []

# (999950..999999).each do |x|
#   if x.even?
#     evens << collatz(x).length
#   else
#     odds << collatz(x).length
#   end
# end

# n = 1
# answer = Hash.new(0)
# start = Time.now
# while n < 55
#   unless n.even?
#     size = collatz(n).length
#     if answer[:size] < size
#       answer[:size] = size
#       answer[:n] = n
#     end
#   end
#   n += 1
# end

# finish = Time.now - start
# puts "it took #{finish} to find answer: #{answer}"

def longest?(num)
  n = 1
  longest = 0
  z = 0
  while n < num
    answer = collatz(n).length
    if longest < answer
      longest = answer
      z = n
      puts "num: #{z} is length: #{longest}" if z.even?
    end
    n += 1
  end
end

def longest_odd(num)
  start = Time.now
  n = 1
  longest = 0
  z = 0
  while n < num
    answer = collatz(n).length
    if longest < answer
      longest = answer
      z = n
      puts "num: #{z} is length: #{longest}"
    end
    n += 1
  end
  return Time.now - start
end

# longest?(537099606)



