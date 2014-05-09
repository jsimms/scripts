puts
puts "pop takes the last element"
a = [3,4,5]
b = [1,2]
print a
puts
print b
puts

x = a.pop
puts x

b.push x

puts "and keeps its current type"
print a
puts
print b
puts
puts

puts "pop(x) takes the last x elements of the array"
a = [3,4,5]
b = [1,2]

print a
puts
print b
puts

puts "and puts them in an array"
x = a.pop(2)
puts x

b.push x
print a
puts
print b
puts
puts

puts "pushing by index allows you to snag a specific element..."
a = [3,4,5]
b = [1,2]

print a
puts
print b
puts

puts "you just have to make sure you delete it..."
x = a[0]
puts x

b.push x
print a
puts
print b
puts

puts "in order to really move one to the other"
a.delete x
print a
puts
print b
puts
puts
