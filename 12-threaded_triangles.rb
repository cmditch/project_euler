require 'thread'

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


  list = {}
  work_q = Queue.new
  (12365..12375).to_a.each{|x| work_q.push x }
  workers = (0...4).map do
    Thread.new do
      begin
        while x = work_q.pop(true)
          n = (factors (1..x).reduce(:+)).count
          list["#{x}"] = n
        end
      rescue ThreadError
      end
    end
  end

def non_threaded
  start_time = Time.now
  (12365..12375).to_a.map {|x| (factors (1..x).reduce(:+)).count }
  end_time = Time.now
  puts end_time - start_time
end

class Array
  def to_h
    h = {}
    self.each { |x| h[x[0]] = x[1] }
    h
  end
end

