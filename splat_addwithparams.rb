# Ripped straight from RubyMonk as a way to examine params being added:
# https://rubymonk.com/learning/books/1-ruby-primer/chapters/19-ruby-methods/lessons/69-new-lesson

def add(a_number, another_number, options = {})
  sum = a_number + another_number
  sum = sum.abs if options[:absolute]
  sum = sum.round(options[:precision]) if options[:round]
  puts options
  sum
end

#puts add(1.0134, -5.568)
#puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)
