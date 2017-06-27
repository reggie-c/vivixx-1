names = 'Alice, John, Lucy'.split(', ')
#=> ['Alice', 'John', 'Lucy']

names[1] = names[1].capitalize.swapcase
names[2] = 'Lucy'
puts names.join(', ')
.
