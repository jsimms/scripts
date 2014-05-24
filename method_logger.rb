$logger_depth = 0

def log desc, &block
  prefix = " "*$logger_depth
  puts prefix + "Beginning #{desc.inspect}..."
  $logger_depth += 1
  result = block[]
  puts prefix + "...#{desc.inspect} finished, returning: #{result}"
end

log 'outer block' do
  log 'some inner block' do
    log 'the inner inner block' do
      true
    end
    1**1 + 2**2
  end
  log 'another inner block' do
    'this is how the devil talks'.reverse
  end
  '0' == 0
end
