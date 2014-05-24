  # Shorter version

def grandfather_clock(&block)
  hour = (Time.new.hour + 11)%12 + 1
  hour.times(&block)
end

grandfather_clock { puts 'DONG!'}

=begin

  Longer version

def grandfather_clock &block
  hour = Time.new.hour # Will give us something between 0 and 23
  if hour >= 13 #Convert to 12 hour format
    hour - hour - 12
  end
  if hour == 0 # 0 is 12am
    hour = 12
  end
  hour.times do
    block.call
  end
end

grandfather_clock do
  puts "DONG!"
end

=end
