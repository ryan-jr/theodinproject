class Timer

  attr_accessor :time

  def initialize(time)

    @time  = time

  end

  def times(time)

  end

end

puts Time.now

puts
puts "Initailized:"
total_seconds = 3600

sec = 0
min = 0
hrs = 0


puts
puts "0 seconds"
puts format("%02d:%02d:%02d", hrs, min, sec)


sec = total_seconds / 300
min = 0
hrs = 0

puts
puts "12 seconds"
puts format("%02d:%02d:%02d", hrs, min, sec)


sec = total_seconds / 600
min = total_seconds / 3600
hrs = 0

puts
puts "1 minute 6 seconds"
puts format("%02d:%02d:%02d", hrs, min, sec)

sec = total_seconds / 90
min = total_seconds / 600
hrs = total_seconds/ 3600

puts
puts "1 hour 6 minuts 40 seconds"
puts format("%02d:%02d:%02d", hrs, min, sec)





#0
#12 sec
# 66 sec
#4000 sec

